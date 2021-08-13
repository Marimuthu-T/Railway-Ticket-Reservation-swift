
class SignUp
{
	var passengerViewModel : PassengerViewModel
	var name : String = ""
	var gender : Gender = .notToSay
	var age : Int = 0
	var address : Address?
	var aadharNo : Int = 000000000000
	var phoneNumber : Int = 000000000
	var mailId : String?
	var password: String = ""

	init()
	{
		print("       Happy to see you to be a part of your family:)")
		passengerViewModel = PassengerViewModel()
		passengerViewModel.updateDataDelegate = self
		if(getData()){
		passengerViewModel.updateModel()
		}
	}

	func updateModel()
	{
		passengerViewModel.updateModel()
	}
	func getData() -> Bool
	{
		print("    Enter your phone number")
		if let phoneNumber = Int(readLine() ?? "NoNumericValue") , phoneNumber > 6666666666 , phoneNumber <= 9999999999
		{
			if(!passengerViewModel.checkForUser(phoneNumber : phoneNumber))
			{
			self.phoneNumber = phoneNumber
			}
			else
			{
				print("        You already have account")
				print(" Enter 1 to open signIn page else enter any")
				if let choice = Int(readLine() ?? "NotANumeric" ) , choice == 1
				{
				let _ =  SignUp()
				}
				return false
			}
		}
		else
		{
			return false
		}

		print("          Enter your name")
		if let name = readLine()
		{
			self.name = name
		}
		else
		{
			return false
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
				return false
			}
		}
		else
		{
			return false
		}

		print("          Enter your age")
		if let age = Int(readLine() ?? "NoNumericValue") , age > 18 , age < 80
		{
			self.age = age
		}
		else
		{
			return false
		}

		print("          Enter your Aadhar No")
		if let aadharNo = Int(readLine() ?? "NoNumericValue") , aadharNo > 100000000000 , aadharNo <= 999999999999
		{
			self.aadharNo = aadharNo
		}
		else
		{
			return false
		}

		

		print("           Enter your mailid")
		if let mailId = readLine()
		{
			self.mailId = mailId
		}
		else
		{
			return false
		}
		
		print("           Enter your Password")

		if let password = readLine()
		{
			self.password = password
		}
		else
		{
			return false
		}
		print("             Confirm Password")

		if let password = readLine(), self.password == password
		{
			print("PasswordMatched")
		}
		else
		{
			return false
		}

		return true
	}	
}