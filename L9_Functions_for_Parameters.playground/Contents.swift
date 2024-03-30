import Cocoa

//How to write functions to allow closures or functions as parameters

func greetUser() {
    print("Hello!")
}

var greetCopy: () -> Void = greetUser

//Making a function that accepts a function as parameter
//Function takes in function generator that has no input but returns an integer
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

//Option 1: Using closure defined as shorthand notation
let rolls = makeArray(size: 50) {
    Int.random(in: 1...20) //This is closure that assigns generator to this function
}


//Option 2: Passing function as an argument
func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let rolls2 = makeArray(size: 50, using: generateNumber)


//Function with multiple function parameters
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("Test")
}

//To write with trailing closure, first is same as for only one, but remaining functions, have to specify each
doImportantWork {
    print("Do important work")
} second: {
    print("Secon")
} third: {
    print("Third")
}
