struct Train
{
	var name : String
	var id : Int
	var coach : [Coach] = []

	
	/*{
		didSet()
		{
		    coach = [Coach](repeating : Coach() , count  : trainDelegate.seatsPerCoach)
		}
	}*/

	init (name : String , id : Int)
	{
		self.name = name
		self.id = id
	}


}