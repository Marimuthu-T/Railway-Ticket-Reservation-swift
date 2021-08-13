
class User
{
	var users: [Int : PassengerModel] = [:]
	var numberOfUsers : Int
	{
		return users.count
	}	

	func addUser(id : Int , passenger : PassengerModel)
	{
		users[id] = passenger
	}
	
	private init()
	{

	}
	private static let userSingleton: User = {
			let userSingleton = User()
			return userSingleton
		}()
	static func shared() -> User
	{
		return userSingleton		
	} 

	
}