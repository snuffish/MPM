%YML ; YAML-Parser for Mumps GT.m / YottaDB
	N

	W !!!

	S *FILE=$$READFILE^%FS("files/package.yaml")

	S %NLEVEL=0

	S %=$NA(FILE) FOR  S %=$Q(@%) Q:(%="")  DO
	.S LINE=$QS(%,1),ROW=@%
	.S SPACEINDENTS=%NLEVEL

	zwr YAML

	Q



CLEAR U $P:(X=0:Y=0:CLEAR) Q



`
