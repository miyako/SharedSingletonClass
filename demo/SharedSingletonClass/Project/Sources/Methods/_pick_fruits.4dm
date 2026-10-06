//%attributes = {"preemptive":"capable"}
// Run this method
TRACE:C157  // Watch the expression(s): $globals, $fruits

var $globals:=cs:C1710.GlobalVars.me

// non-shared collections not supported
var $new_basket:=New shared collection:C1527("apple"; "orange")

$globals.assign("fruits_coll"; $new_basket)

// updates global variables in different process
CALL WORKER:C1389("wrkr2"; "add_fruit"; "banana")

$fruits:=$globals.fruits_coll

// collection functions that modify shared collections automatically trigger internal "Use...End use"
$fruits.push("cherry")


