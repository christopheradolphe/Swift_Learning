import Cocoa

//Overall you can only have one return variable but it can hold multiple items

//Could return string and dictionary return as one value but messy
//Overall use one of Sets, Arrays, Dictionaries or Tuples to return
//Tuples are cleanest

func getUser() -> (firstName: String, lastName: String) {
    return ("Taylor", "Swift")
}

print("Our user is \(getUser().firstName) \(getUser().lastName)")

//Pulling values from the tuple
let (firstName, lastName) = getUser()
