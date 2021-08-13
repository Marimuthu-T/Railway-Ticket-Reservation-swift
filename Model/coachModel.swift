struct Coach
{
	var name : String
	var id : Int

	var seatsPerCoach: Int
	var train : Train 

	init (name : String , id : Int , seatsPerCoach: Int , train: Train)
	{
		self.name = name
		self.id = id
		self.seatsPerCoach = seatsPerCoach
		self.train = train
		
		print("Entered coach")
	}
}