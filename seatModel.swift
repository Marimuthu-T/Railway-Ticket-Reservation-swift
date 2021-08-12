struct Seat
{
	var name : String?
	var id : Int?
	var seatAvailability : [Int] = [] 

	var coachDelegate: Coach?
	{
		didset(coach)
		{
		     seatAvailability = [Int](repeating : 0 , count :coach.SeatsPerCoach)
		}
	}
	var prority: Bool
}