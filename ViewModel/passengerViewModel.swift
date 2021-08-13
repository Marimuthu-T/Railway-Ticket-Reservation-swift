class PassengerViewModel
{
	weak var updateDataDelegate : SignUp?

	init()
	{
		
	}

	func updateModel()
	{
		guard updateDataDelegate != nil else
		{
			print("updateDataDelegate  not set")
			return
		}
			var passenger = PassengerModel(name : updateDataDelegate!.name ,gender :updateDataDelegate!.gender ,  age : updateDataDelegate!.age , aadharNo : updateDataDelegate!.aadharNo ,
			phoneNumber : updateDataDelegate!.phoneNumber , password : updateDataDelegate!.password )
	}
}


