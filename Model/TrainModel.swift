struct Train
{
	var name : String
	var id : Int
	var boardingPointsCount = 5
	var coach = [Coach](repeating : Coach() , count : 10)
	init (name : String = "Dm" , id : Int = 22)
	{
		self.name = name
	    self.id = id
	}
}