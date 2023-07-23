%YML ; YAML-Parser for Mumps GT.m / YottaDB
	N

	S %=0

	W !!!

	S *FILE=$$READFILE^%FS("files/package.yaml")

	S %NLEVEL=0

	S %=$NA(FILE) FOR  S %=$Q(@%) Q:(%="")  DO
	.S LINE=$QS(%,1)
	.S ROW=@%
	.D CHECKROW(.ROW)

	zwr YAML

	Q


CHECKROW(ROW)
	S KEY=$P(ROW,":",1)
	S VALUE=$P(ROW,":",2)

	S IGNORE=$$IGNORE(ROW)
	W !!!!!

	IF $A(VALUE)'=-1   DO
	.S YAML(KEY)=$$L^%TRIM(VALUE)

	Q

IGNORE(ROW)
	N (ROW)
	S IGNORE=0
	S FIRSTCHAR=$E(ROW,1)
	FOR CHAR="","#"  S:(FIRSTCHAR=CHAR) IGNORE=1
	Q IGNORE

CLEAR U $P:(X=0:Y=0:CLEAR) Q



