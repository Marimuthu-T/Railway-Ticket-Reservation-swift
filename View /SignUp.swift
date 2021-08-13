
class SignUp
{
	var passengerViewModel : PassengerViewModel
	var name : String = ""
	var gender : Gender = .notToSay
	var age : Int = 0
	var address : Address?
	var aadharNo : Int = 000000000000
	var phoneNumber : Int!
	var mailId : String?
	var password: String!

	init()
	{
		print("Happy to see you to be a part of your family:)")
		passengerViewModel = PassengerViewModel()
		passengerViewModel.updateDataDelegate = self
		getData()
		passengerViewModel.updateModel()
	}

	func updateModel()
	{
		passengerViewModel.updateModel()
	}
	func getData()
	{
		print("Enter your phone number")
		if let phoneNumber = Int(readLine() ?? "NoNumericValue") , phoneNumber > 6666666666 , phoneNumber <= 9999999999
		{
			if(true)
			{
			self.phoneNumber = phoneNumber
			}
		}
		else
		{
			return
		}

		print("Enter your name")
		if let name = readLine()
		{
			self.name = name
		}
		else
		{
			return
		}

		print("""
		                           		Enter your gender
						1. male
						2. female
						3. gender diverse
		""")	
		if let gender = Int(readLine() ?? "NoNumericValue")
		{
			switch(gender)
			{
			    case 1:
				self.gender = .male
				case 2:
				self.gender = .female
				case 3:
				self.gender = .genderDiverse
				default:
				return
			}
		}
		else
		{
			return
		}

		print("Enter your age")
		if let age = Int(readLine() ?? "NoNumericValue") , age > 18 , age < 80
		{
			self.age = age
		}
		else
		{
			return
		}

		print("Enter your Aadhar No")
		if let aadharNo = Int(readLine() ?? "NoNumericValue") , aadharNo > 100000000000 , aadharNo <= 999999999999
		{
			self.aadharNo = aadharNo
		}
		else
		{
			return
		}

		

		print("Enter your mailid")
		if let mailId = readLine()
		{
			self.mailId = mailId
		}
		
		print("Enter your Password")

		if let password = readLine()
		{
			self.password = password
		}
		
		print("Confirm Password")

		print("Enter your mailid")
		if let password = readLine(), self.password == password
		{
			print("PasswordMatched")
		}
	}	
}