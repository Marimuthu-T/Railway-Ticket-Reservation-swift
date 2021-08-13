class PassengerViewModel
{
	weak var updateDataDelegate : SignUp?
	var user = User.shared()

	func updateModel()
	{
		guard updateDataDelegate != nil else
		{
			print("updateDataDelegate  not set")
			return
		}
			let passenger = PassengerModel(name : updateDataDelegate!.name ,gender :updateDataDelegate!.gender ,  age : updateDataDelegate!.age , aadharNo : updateDataDelegate!.aadharNo ,
			phoneNumber : updateDataDelegate!.phoneNumber , password : updateDataDelegate!.password )

			user.addUser(id : updateDataDelegate!.phoneNumber , passenger : passenger)
			numberOfUsers()
	}

	func checkForUser(phoneNumber : Int) -> Bool
	{
		if let _ = user.users[phoneNumber]
		{
			return true
		}
		else
		{
			return false
		}
	}
	func passwordValidator(phoneNumber : Int , password : String) -> Bool
	{
		if let user = user.users[phoneNumber]
		{
			return user.validatePassword(password : password)
		}
		else
		{
			return false
		}
	}
	func numberOfUsers()
	{
		print(user.numberOfUsers)
	}
	
}


