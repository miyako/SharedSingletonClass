//%attributes = {}
var $globals:=cs:C1710.GlobalVars.me
var $msg:=Localized string("Welcome_Intro")+"\n\n"
SHOW ON DISK:C922(Get 4D folder:C485(Current resources folder:K5:16)+"info.txt")
// show the city name in the UI language
var $city : Text
If (Get database localization(Current localization)="ja")
	$city:=$globals.cityJA
Else 
	$city:=$globals.city
End if 
$msg+="CITY = "+$city+"\n"
$msg+="DEPT = "+String:C10($globals.dept)+"\n"
$msg+="MAIN = "+String:C10($globals.main)+"\n\n"
$msg+=Localized string("Welcome_Examples")
ALERT:C41($msg)
