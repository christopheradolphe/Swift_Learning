import Cocoa

//Booleans and Toggle

let bool = true
var isAuthenticated = true
isAuthenticated = !isAuthenticated
isAuthenticated.toggle()

//String Joining

//Inefficient as one at a time
let string1 = "Chris"
let string2 = "Adolphe"
print(string1 + string2)

//String Interpolation
let message = "Hello my name is \(string1) \(string2) and this is String Interpolation Result"
print(message)

let newMessage = "5 x 5 equals to \(5*5)"

