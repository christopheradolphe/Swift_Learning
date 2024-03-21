import Cocoa

//Note: Can not compare two different types

//If Else block
var age = 8

if age > 6 {
    print("Old")
} else if age == 6 {
    print("Getting old")
} else {
    print("Young")
}


//AND

let temp = 25
if temp > 20 && temp < 30 {
    print("Nice day")
}

//OR

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent {
    print("Has access")
}

// AND and OR together -> No specifics as to which come first so use brackets to specify order


//Enums for comparisons (Note the use of not having to specify Enum type every time)
enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly")
} else if transport == .bicycle {
    print("Let's ride")
} else if transport == .car {
    print("Traffic")
} else {
    print("Scooter time")
}
