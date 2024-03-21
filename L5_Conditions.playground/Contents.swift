import Cocoa

//If Statements

let speed = 88
let percentage = 85
let age = 18

if speed >= 80 {
    print("Fast baby!")
}

if percentage < 85 {
    print("You passed")
}

if age > 18 {
    print("Old")
}


//String comparison (will always compare on alphabetical scale)
let ourName = "Chris"
let friendName = "James"

if ourName < friendName {
    print("It is \(ourName) vs \(friendName)")
}

//Note: Count in Swift for a string is very inefficient
// Thus use string compare for empty string

var username = ""

//Worse
if username.count == 0 {
    print("Worst Way")
}

//Better
if username == "" {
    print("Better Way")
}

//Best
if username.isEmpty{
    print("Best Way")
}

//Comparing Enums

enum Sizes: Comparable {
    case small
    case medium
    case large
}

print(Sizes.small < Sizes.large)
