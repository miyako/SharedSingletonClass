shared singleton Class constructor($file : 4D:C1709.File)
	$json:=JSON Parse:C1218($file.getText())
	For each ($prop; $json)
		This:C1470.assign($prop; $json[$prop])
	End for each 
	
shared Function assign($name : Text; $value : Variant;  ... )
	// "shared" keyword allows omission of "Use...End use"
	
	// just one global value to assign
	If (Count parameters:C259=2)
		If (Undefined:C82(This:C1470[$name]))
			This:C1470[$name]:=$value
		Else 
			// validates input type on existing variable
			If (Value type:C1509(This:C1470[$name])=Value type:C1509($value))
				This:C1470[$name]:=$value
			Else 
				ALERT:C41("The type of the new value does not match the existing value's type for global: "+$name)
			End if 
		End if 
	End if 
	
	// more than one global value to assign
	If (Count parameters:C259>2)
		// requires even variable-value pairs
		If (Count parameters:C259%2=0)
			For ($i; 1; Count parameters:C259; 2)
				If (Undefined:C82(This:C1470[${$i}]))
					This:C1470[${$i}]:=${$i+1}
				Else 
					// validates input type on existing variable
					If (Value type:C1509(This:C1470[${$i}])=Value type:C1509(${$i+1}))
						This:C1470[${$i}]:=${$i+1}
					Else 
						ALERT:C41("The type of the new value does not match the existing value's type for global: "+${$i})
					End if 
				End if 
			End for 
		Else 
			ALERT:C41("Odd amount of parameters detected when assigning global values.")
		End if 
	End if 
	
	