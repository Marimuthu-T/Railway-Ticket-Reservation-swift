class Seat
{
	var name : String?
	var id : Int?
	var seatAvailability : [Int] = [] 

	lazy var trainDelegate: Train
	{
		didSet
		{
		     seatAvailability = [Int](repeating : 0 , count : self.trainDelegate.boardingPointsCount)
		}
	}
	init (name : String = "Dseat" , id : Int = 1722 , prority : Bool = false)
	{
		self.name = name
		self.id = id
		self.prority = prority

	}
	var prority: Bool
}