import Cocoa

//Guards: second way of unwrapping optionals
//Use guard let
//guard let is always followed by else
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

//if let vs guard let
//While if let runs the code inside the braces if optional has value
//Guard let runs code inside braces if optional does not have value
    //Instead puts value inside new variable
    //Better for early return from a function

//guard very helpful for checking nil inputs to a function that are optionals
//1. If guard check is used Swift always requires you to use return if check fails to exit
//2. IF check passes you have already unwrapped value to be used later
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")

        // 1: We *must* exit the function here
        return
    }

    // 2: `number` is still available outside of `guard`
    print("\(number) x \(number) is \(number * number)")
}

//if let vs guard let usage
    //if let: to regularly unwrap anywhere in code
    //guard let: functions or within scopes

//****Can only use if let and guard let on optionals
