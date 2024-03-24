import Cocoa

//Way to create a value with a True False conditions
// Condition ? True : False
let age = 18
let canVote = age >= 18 ? "Yes" : "No"

//Can't have if else inside print so this is where very usefule
let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")


//Using an enum
enum Theme{
    case light, dark
}

theme = Theme.dark

let background = theme == .dark ? "black" : "white"
