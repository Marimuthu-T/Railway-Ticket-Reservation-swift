struct PassengerModel
{
	var name : String
	var gender : Character
	var age : Int
	var address : Address
	var aadarNo : Int
	private let phoneNumber : Int
	@mailid var mailId : String 
	private let password: String

	init(name: String , gender : Character , age : Int , address : Address , aadhar : Int , phoneNumber : Int , password : String)
	{
		self.name = name
		self.gender = gender
		self.age = age
		self.address = address
		self.aadarNo = aadarNo
		self.mailid = mailid
		self.password = password
		self.phoneNumber = phoneNumber
	}

}