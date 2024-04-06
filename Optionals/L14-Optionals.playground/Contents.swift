import Cocoa

//Optionals
//Swifts version of values that can store null references (nil)
//Essentially means that variable may have value or might not

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]
//Swift here sends back an optional which means data might be present or might not
//Optionals typically represnted by putting ? after data type (eg. String? here)

//String? : Value that may contain a string or may contain nil
//nil: no value

//We need to unwrap the otptional in order to use it

//Unwrapping optionals
//Method does three things:
//1. Reads the optional value from the dictionary
//2. If the optional has a string inside it gets unwrapped -> String gets placed in variable
//3. Condition has succeeded so conditions body is run
//How to do this: combine if and let/var together
        //Could also have else block
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

//Non-optional data type means there must be data and it can't be nil
        //eg. non-optional Int means there has to be a number in data type

//Can't pass an optional into a function that requires a non-optional or will get error
func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
square(number: number)

//***Instead with optionals we must first unwrap it to use
//Common to unwrap with constant that has same name
        //Concept called shadowing having two variables with same name, one as optional and other as non-optional
if let number = number {
    square(number: number)
}
