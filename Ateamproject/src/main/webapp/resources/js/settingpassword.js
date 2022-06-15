/**
 * 
 */
 	function show() {
		var x= document.getElementById("setting_current_password");
		if(x.type == "password"){
			x.type="text";
		}else{
			x.type = "password";
		}
	}
	