//%attributes = {"preemptive":"capable"}
#DECLARE($fruit : Text)

TRACE:C157  // Watch the expression(s): $globals, $fruits

$globals:=cs:C1710.GlobalVars.me
$fruits:=$globals.fruits_coll

// collection functions that modify shared collections automatically trigger internal "Use...End use"
$fruits.push($fruit)

