Test

	S *FILE=$$READFILE^%FS("files/package.yaml")

	S INDENT=$C(32,32)

	S ROW=$NA(FILE) FOR  S ROW=$Q(@ROW) Q:(ROW="")  DO
	.S LINE=$QS(ROW,1)
	.S VALUE=@ROW
	.W "["_LINE_"] "_VALUE,!


	W !!!

	Q











CLEAR U $P:(X=0:Y=0:CLEAR) Q
