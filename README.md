# PFXCSPAttribute
Batch file that changes the PFX file certificate to specify a CSP attribute. This change allows SHA256 signatures with A1 certificates using C#.

usage:

converter.bat "certificate file.pfx" password


Based on the following sites:

https://knowledge.digicert.com/solution/SO21807.html

https://hintdesk.com/2011/07/29/c-how-to-fix-invalid-algorithm-specified-when-signing-with-sha256/


- Clemar Folly Jr.
clemarjr[at]gmail.com
