//%attributes = {"preemptive":"capable"}
// Run this method
TRACE:C157  // Watch the expression(s): $globals

var $globals:=cs:C1710.GlobalVars.me

$globals.assign("foo"; 123; "bar"; "hello"; "bool"; False:C215)

// updates global variables in different process
CALL WORKER:C1389("wrkr1"; "update_vals")

If ($globals.bool=True:C214)
	ALERT:C41($globals.bar+" "+String:C10($globals.foo))
End if 