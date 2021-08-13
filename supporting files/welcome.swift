class Welcome 
{
	func home()
	{
	print("""
	                   Choose your choice                   
			New Passenger =>  1 -> SignUp
			Having Account => 2 -> SignIn
	 
	""")
	if let choice = Int ( readLine() ?? "4" )
	{
		switch(choice)
		{
			case 1:
			    let _ = SignUp()			    
			case 2:
			    let _ = SignIn()
			case 3:
			    return
			default:
			    print("Enter proper choice as numeric")
		}
		Welcome().home()
	}
	}
}