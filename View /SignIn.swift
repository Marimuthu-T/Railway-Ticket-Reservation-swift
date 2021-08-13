class SignIn
{
	var passengerViewModel : PassengerViewModel
	init()
	{
			passengerViewModel = PassengerViewModel()

	        print("""
				                          WELCOME BACK
							Enter your mobilenumber
			""")
         	if let mobileNumber = Int (readLine() ?? "NotANumeric")
  			{
			if(passengerViewModel.checkForUser(phoneNumber : mobileNumber))
			{
				print("           Enter your password")
				if let password = readLine()			
				{
					if(passengerViewModel.passwordValidator(phoneNumber : mobileNumber, password : password))
					{
						let _ = Home()
						return 
					}
			    }
			}
			else
			{
				print("Your mobile number not yet registered Enter 1 to open sign page else enter any")
				if let choice = Int(readLine() ?? "NotANumeric" ) , choice == 1
				{
				let _ =  SignUp()
				}
				return 
			}
		}
	}
}