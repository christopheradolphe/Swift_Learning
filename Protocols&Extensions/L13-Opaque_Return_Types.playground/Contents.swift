import Cocoa

func getRandomNumber() -> Int {
    Int.random(in: 1...6)
}

func getRandomBool() -> Bool {
    Bool.random()
}

//Int and Bool conform to common Swift Protocl called Equatable which means Ints can be compared for equality as can Bools
print(getRandomBool() == getRandomBool())
print(getRandomNumber() == getRandomNumber())

//Because they both conform to common protocol we would think we can return type Equitable that can either Bool or int

func getRandomNumberError() -> Equatable {
    Int.random(in: 1...6)
}

//If we create Vehicle prototype we can return that from function as all vehicle types will have same methods and properties of Vehicle making them interchangeable
//But Bool and Int are not interchangeable

//Opaque Data Types
//Let us hide information in our code but not from Swift Compiler
//Allows us to make code flexible so we can return different things in future
//Swift compiler will always check data type returned and could throw error at compile time
//some: keword before return type protocl to assert as opaque data type

func getRandomNumberOpaque() -> some Equatable {
    Int.random(in: 1...6)
}
//Could allow us to change getRandomNumber to Double.random(in: 1...6) instead and no issue generated

func getRandomBoolOpaque() -> some Equatable {
    Bool.random()
}


//***Note: This is mostly important when reading SwiftUI code
