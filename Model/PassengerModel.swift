struct PassengerModel
{
	var name : String
	var gender : Gender
	var age : Int
	var address : Address?
	var aadharNo : Int
	private let phoneNumber : Int
	var mailId : String?
	private let password: String

	init(name: String , gender : Gender , age : Int , address : Address , aadharNo : Int , phoneNumber : Int , password : String , mailId : String)
	{
		self.name = name
		self.gender = gender
		self.age = age
		self.address = address
		self.aadharNo = aadharNo
		self.mailId = mailId
		self.password = password
		self.phoneNumber = phoneNumber
	}
		
	init(name: String , gender : Gender , age : Int , aadharNo : Int , phoneNumber : Int , password : String)
	{
		self.name = name
		self.gender = gender
		self.age = age
		self.aadharNo = aadharNo
		self.password = password
		self.phoneNumber = phoneNumber
	}

}

enum Gender
{
	case male
	case female
	case notToSay
	case genderDiverse
}