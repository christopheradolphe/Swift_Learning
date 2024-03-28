import Cocoa

//Closures
//Functions we can assign to variables and pass in as arguements to a function
//One of tougher topics in swift


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
let sayHello1 = { (name: String) -> String in
    "Hi \(name)!"
}

//Integers are of type int
//Decimals are of type double
//Functions are of type closures

func GetUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

//Type for closure consists solely of inputs and output types

var GetUserInformation: (Int) -> String = GetUserData
