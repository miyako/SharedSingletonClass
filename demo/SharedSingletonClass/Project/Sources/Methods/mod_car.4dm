//%attributes = {"preemptive":"capable"}
#DECLARE($prop : Text; $val : Variant)

TRACE:C157  // Watch the expression(s): $globals, $car

$globals:=cs:C1710.GlobalVars.me
$car:=$globals.car_obj

Use ($car)
	$car[$prop]:=$val
End use 

