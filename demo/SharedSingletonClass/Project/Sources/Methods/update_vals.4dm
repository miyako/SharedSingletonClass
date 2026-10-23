//%attributes = {"preemptive":"capable"}
TRACE:C157  // Watch the expression(s): $globals

var $globals:=cs:C1710.GlobalVars.me

$globals.assign("foo"; $globals.foo*2; "bar"; $globals.bar+" world"; "bool"; Not:C34($globals.bool))