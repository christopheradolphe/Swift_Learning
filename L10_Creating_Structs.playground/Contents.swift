import Cocoa

//Struct lets us create complex data types

//Elements of structs
//Properties: constants and variables in structs
//Methods: functions inside structs
//Instance: unique struct creation

//Swift automically creates an initializer (init) that allows us to instantiate a struct and assign property values
//Initializer for any set of parameters, so if many properties, infinite number of inits automatically

//Structs we capitalize first letter by convention
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() -> Void {
        print("\(title) (\(year)) by \(artist)")
    }
}

//Assigning struct values
let red = Album(title: "Red", artist: "Taylor Swift", year: 2019)
red.printSummary()

//Can't modify cause if we create using a let shouldn't be able to modify
//Therefore we will get a self is immutable error
//ERROR STRUCT DECLARATION DUE TO MISSING MUTATING KEYWORD NEXT TO FUNC
struct EmployeeFail {
    let name: String
    var vacationRemaining: Int
    
    func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("\(name) is going on vacation!")
            print("Remaining days of vacation for \(name): \(vacationRemaining)")
        } else {
            print("Not enough vacation days remaining")
        }
    }
}

//Any functions that don't change data can be let with regular func as defined usually

//Creating a function in a struct that changes data has to be marked with: mutating
struct Employee {
    let name: String
    var vacationRemaining: Int
    
    //*****mutating placed before func
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("\(name) is going on vacation!")
            print("Remaining days of vacation for \(name): \(vacationRemaining)")
        } else {
            print("Not enough vacation days remaining")
        }
    }
}

var Chris = Employee(name: "Chris", vacationRemaining: 20)
Chris.takeVacation(days: 5)


