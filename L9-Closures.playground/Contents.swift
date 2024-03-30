import Cocoa

//Closures
//Wrap up some functionaility in a single variable
//Functions we can assign to variables and pass in as arguements to a function
//One of tougher topics in swift

//Closures are similar to function pointers in their role in swift in that they can be used as inputs and outputs of functions

//Common purposes of closures:
// To store functionality, for examples including:
// 1. Running some code after a delay
// 2. Running some code after an animation
//3. Running some codewhen a download has finished
//4. Running some code when a user has selected an option from a menu


//Assigning a function to a value to assign a closure
func greetUser() {
    print("Hi There!")
}

greetUser()
var greetCopy = greetUser
//Really is: var greetCopy: () -> Void = greetUser
greetCopy()


//Creating a closure with no parameter and return types
//Do not define function name just the variable
let sayHello = {
    print("Hi there!")
}

sayHello()


//Closure with return and parameters
//Notice extra keyword in -> marks end of paramter and return type and marks start of body of code
//***Note if no return type then just remove "-> String" and thus do not need arrow
let sayHello1 = { (name: String) -> String in
    "Hi \(name)!"
}

print(sayHello1("Taylore"))

//Integers are of type int
//Decimals are of type double
//Functions are of type closures

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

//Type for closure consists solely of inputs and output types

var GetUserInformation: (Int) -> String = getUserData
//***When copy is made, external parameter (for) is lost, so can't specify (for: 1989) or will get error
let user = GetUserInformation(1989)
print(user)


//Use of closures: - Argument to a function
let team = ["Gloria", "Suzanne", "Piper", "Tiffany"]
let sortedTeam = team.sorted() //Does it alphabetically
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    //Function sorts regularly but puts captain Suzzanne at start of sorted elements
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    } else {
        return name1 < name2
    }
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

//Can define closure as an argument
let captainFirstTeam2 = team.sorted(by:  { (name1: String, name2: String) -> Bool in
    if name1 == "Gloria" {
        return true
    } else if name2 == "Gloria" {
        return false
    } else {
        return name1 < name2
    }
})

print(captainFirstTeam2)
