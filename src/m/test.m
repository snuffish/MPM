Test
	N

	W !!!

	S *FILE=$$READFILE^%FS("files/package.yaml")

	S INDENTCHAR=32
	S BLOCKLEVEL=0

	S APPNAME=""

	S ROW=$NA(FILE) FOR  S ROW=$Q(@ROW) Q:(ROW="")  DO
	.S NR=$QS(ROW,1)
	.S LINE=@ROW
	.;; Get the AppName and the Start-point in the YAML file.
	.IF $C($E(LINE,1))'=INDENTCHAR  DO
	..S:(APPNAME="") APPNAME=$TR(LINE,":")
	.;;
	.;; Check after a new inner-block
	.IF $$ISNEWBLOCK(LINE) S BLOCKLEVEL=$I(BLOCKLEVEL)  DO
	..W "NEW BLOCK => "_$TR(LINE,$C(INDENTCHAR)),!

	W APPNAME

	W "HEEEEEJSAN"

	Q

BLOCK()

	Q

ISNEWBLOCK(LINE)
	Q $A($E(LINE,1))=32


;.IF $E($RE(VALUE))=":" W "END OF BLOCK:"_VALUE,!
;.W "["_LINE_"] "_VALUE,!4444x
;DSDSdddsa1321
;;;;DSDSADSADAS

CLEAR U $P:(X=0:Y=0:CLEAR) Q



