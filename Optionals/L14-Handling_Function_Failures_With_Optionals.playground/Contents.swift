import Cocoa

//We can use optional to determine if a function has returned error or not without returning what the error was

//If all we care about is whether function failed or not we can use optional try to have function return an optional value
    //If function ran without throwing any errors than optional will contain return value
    //If error was thrown in function it will return a nil

//If you use try!, return will either be function return or nil if error thrown


enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

//When to use try? (try optional)
//1. Combination with guard let to exit current function if try? returns nill
//2. In combination with nil coalescing to attempt something or provide default value on failure
//3. *******When you only want to know if throwing function succeeded or not and don't care about specific type of error ******
        //When using try you must catch all errors that can be thrown from function
