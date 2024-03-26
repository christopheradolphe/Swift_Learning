import Cocoa

//Can have multiple functions with same name but different parameters
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }



//***IMPORTANT***
//More similar to other languages
//We do not always need to specify argument type when calling function
//eg. for has prefix we don't specify
let lyric = "I want a rainbow"
print(lyric.hasPrefix("I want")) //Not lyric.hasPrefix(string: "I want")

//Creating functions so not to specify argument type in function call
//Can do this with an underscor before argument declaration
func isUpperCase(_ string: String) -> Bool {
    return string == string.uppercased()
}

let string = "HELLO"
print(isUpperCase(string))





//Different Internal and External Parameter Names
//External: argument when calling function
//Internal: varaible used in fucntion
//Here, number is internal, for is external
func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) = \(i*number)")
    }
}

printTimesTable(for: 5)
