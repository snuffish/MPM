Test
	N

	W !!!

	S *FILE=$$READFILE^%FS("files/package.yaml")

	S INDENTCHAR=32

	S APPNAME=""

	S ROW=$NA(FILE) FOR  S ROW=$Q(@ROW) Q:(ROW="")  DO
	.S NR=$QS(ROW,1)
	.S LINE=@ROW
	.;; Get the AppName and the Start-point in the YAML file.
	.IF $C($E(LINE,1))'=INDENTCHAR  DO
	..S:(APPNAME="") APPNAME=$TR(LINE,":")
	.;;
	.IF $$ISNEWBLOCK(LINE)  DO
	..W "NEW BLOCK => "_$TR(LINE,$C(INDENTCHAR)),!

	W APPNAME

	Q

BLOCK()

	Q

ISNEWBLOCK(LINE)
	Q $A($E(LINE,1))=32


;.IF $E($RE(VALUE))=":" W "END OF BLOCK:"_VALUE,!
;.W "["_LINE_"] "_VALUE,!







CLEAR U $P:(X=0:Y=0:CLEAR) Q
