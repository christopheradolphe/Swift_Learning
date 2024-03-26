import Cocoa

//Three steps
//1. Identify all kinds of problems
//2.


//eg. Creating a weak error

//1. Identify all errors (Typically using an enum
//Create enum passwordError that is of error type
//This syntax for creating error enums if very common with specifying "Error" Type
enum PasswordError: Error {
    case short, obvious
}

//2. Write a function that can trigger errors
//Must mark a function that may throw errors
//Throws suggests that it can throw errors but not neccessarily
//Return type is still return type of function
//Error may not necessarily be return type so we do not specify return of errors
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count > 8 {
        return "OK"
    } else if password.count > 10 {
        return "Strong"
    } else {
        return "Excellent"
    }
}

//3. Try and run function with do, try-catch block that tries to catch errors
// Start section where errors might be throw with do
// Any time error throwing function called, execute with try
// Follow with a catch block
// If error, right after try function call line, it goes right to catch block, not executing rest of do block
let string = "12345"

do {
    let result = try checkPassword(string) //try before function call always
    print("Pass") // This will be skipped
} catch {
    print("There was an error")
}


//3B. Catching different errors separately, with default case
do {
    let resultNew = try checkPassword(string)
    print("OK")
} catch PasswordError.short {
    print("Please use longer Password")
} catch PasswordError.obvious {
    print("Very obvious")
} catch { //Default case
    print("There was an error: \(error.localizedDescription)") //Print Error Description
}


//Can have multiple try in catch block with same catch block
do {
    try throwingFunction1()
    nonThrowingFunction1()
    try throwingFunction2()
} catch {
    //Do something to handle errors
}
