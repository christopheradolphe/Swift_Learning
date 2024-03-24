import Cocoa

//Function -> No parameters
func showWelcome() {
    print("Welcome to my App!")
}

showWelcome()

//Function -> One parameter
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) * \(number) is \(i*number)")
    }
}
//Calling function automically shows values we have to assign
//Note that we write arguement and its value in function call (eg. arg: value)
printTimesTables(number: 5)

//Function -> Multiple Parameters
func printTimesTablesMax(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i*number)")
    }
}

//Even though we say which value for each parameter, can not change order or issue will result
printTimesTablesMax(number: 5, end: 6)
