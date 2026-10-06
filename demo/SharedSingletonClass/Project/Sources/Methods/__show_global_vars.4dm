//%attributes = {}
var $globals:=cs:C1710.GlobalVars.me
var $msg:="Welcome to the demo application! The following global variables were all initialized On Startup from the /Resources/info.txt file:\n\n"
SHOW ON DISK:C922(Get 4D folder:C485(Current resources folder:K5:16)+"info.txt")
$msg+="CITY = "+$globals.city+"\n"
$msg+="DEPT = "+String:C10($globals.dept)+"\n"
$msg+="MAIN = "+String:C10($globals.main)+"\n\n"
$msg+="Check out other examples for handling scalar (Method: _create_vals), object (Method: _build_car), and collection (Method: _pick_fruits) data."
ALERT:C41($msg)
