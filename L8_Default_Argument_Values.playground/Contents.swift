import Cocoa

//Providing a default value for a function parameter/argument
//Add an equals after parameter type
func printTimesTables(number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) = \(i*number)")
    }
}
printTimesTables(number: 5)
printTimesTables(number: 5, end:10)
