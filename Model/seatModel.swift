struct Seat
{
	var name : String?
	var id : Int?
	var seatAvailability : [Int] = [] 

	var coachDelegate: Coach
	/***{
		didSet
		{
		     seatAvailability = [Int](repeating : 0 , count :coachDelegate.seatsPerCoach)
		}
	}***/
	var prority: Bool
}