import Cocoa

//Nil Coalescing : third way to unwrap optionals
//Way to unwrap optional but also provide default value if optional was empty

let captains = [
    "Enterprise": "Pickard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

//Nil coalescing syntax
let new = captains["Serenity"] ?? "N/A"

//Result: result will always be non-optional


//Very helpful for function returns that may return an optional
let input = ""
let number = Int(input) ?? 0
print(number)
