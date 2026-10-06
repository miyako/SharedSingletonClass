//%attributes = {"preemptive":"capable"}
// Run this method
TRACE:C157  // Watch the expression(s): $globals, $car

var $globals:=cs:C1710.GlobalVars.me

// non-shared objects are not supported
var $new_car:=New shared object:C1526("make"; "Fiat"; "model"; "Panda")

$globals.assign("car_obj"; $new_car)

// updates global variables in different process
CALL WORKER:C1389("wrkr3"; "mod_car"; "sunroof"; True:C214)

$car:=$globals.car_obj

Use ($car)
	$car.color:="blue"
End use 