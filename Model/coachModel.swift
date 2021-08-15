class Coach
{
	var name : String
	var id : Int
	var LowerSeats = [Seat](repeating : Seat() , count : 20)
	var UpperSeats = [Seat](repeating : Seat() , count : 10)
	var train : Train 

	init (name : String = "Dcoach" , id : Int = 17)
	{
		self.name = name
		self.id = id
		self.train = Train()
		
		print("Entered coach")
	}
}