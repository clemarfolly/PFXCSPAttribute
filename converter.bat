@echo off 
IF EXIST temp.pfx (
    del temp.pfx
) 
copy %1 temp.pfx

openssl pkcs12 -in temp.pfx -nocerts -out key.pem -passin pass:%2 -passout pass:123456
openssl pkcs12 -in temp.pfx -clcerts -nokeys -chain -out cert.pem -passin pass:%2
openssl pkcs12 -export -in cert.pem -inkey key.pem -CSP "Microsoft Enhanced RSA and AES Cryptographic Provider" -out temp-ajustado.pfx -passout pass:%2 -passin pass:123456

del key.pem
del cert.pem
del temp.pfx
if EXIST temp-ajustado.pfx (
	echo criando arquivo "%~n1-Ajustado.pfx"
	copy temp-ajustado.pfx "%~n1-Ajustado.pfx"
	del temp-ajustado.pfx
	echo Finalizado com sucesso.
) else (
	echo Erro ao criar arquivo ajustado.
)