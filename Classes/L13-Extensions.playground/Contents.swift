import Cocoa

//Extensions
//Let us add functionality (methods or properties) to any type whether we created it or not
    //eg. can add to a type Apple created

//1. Extensions to add Methods
//eg. trimmingCharacters(in:) is function on strings to remove chars from start and end of strings
var quote = "     To be or not to be      "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
print(trimmed)


//Keywords
//extension: followed by class or type to add functionality to followed by curly braces

//If we think trimmingCharacters is too long lets make it shorter with extension
extension String {
    mutating func trimmed() {
        self = self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

//**In swift operations built in with present tense (eg. trim) modify value itself
        //operations built in with past tense or active tense (eg. trimmed, trimming) return affected type but value itself is unaffected

//sort vs sorted
var numbers = [5,2,6,8,0]
numbers.sorted()
print(numbers)
numbers.sort()
print(numbers)

//2. Extensions to add properties
//*Note extensions with added properties must be computed not stored properties
    //If stored for data type like int then every instantiated int would need to take up more place which is not possible after fact

//eg. string function to break new lines into array of lines of strings

extension String {
    var newLine: [String] {
        self.components(separatedBy: .newlines)
    }
}

//Extensions very useful for creating our own initializers while retaining the memberwise struct initializer provided by Swift
