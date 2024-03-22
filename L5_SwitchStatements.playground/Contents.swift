import Cocoa

//Use Switch instead of if/else when:
//1. When you check an enum as only certain number of cases
//2. Advanced pattern matching
//3. When you want to have default value
//4. Typically when more than 4 states to check


//Switch Statement
enum Weather {
    case sun, rain, wind, snow, unknown
}

var forecast = Weather.rain

switch forecast{
case .sun:
    print("Sunny")
case .rain:
    print("Rainy")
case .wind:
    print("Windy")
case .snow:
    print("Snowy")
case .unknown:
    print("Unknown")
}

//Note: no break so it only runs the one case block, no fall through


//Default for Else
let place = "Toronto"
switch place{
case "Gotham":
    print("Batman")
case "Ocean":
    print("Aquaman")
default:
    print("Who are you?")
}

//Fall Through with Switch Statements
let day = 5
print("My true love gave to me ...")
switch day {
case 5:
    ("5 Golden Rings")
    fallthrough
case 4:
    print("4 Calling Birds")
    fallthrough
case 3:
    print("3 French Hens")
    fallthrough
case 2:
    print("2 Turtle Doves")
    fallthrough
case 1:
    print("A partridge in a pear tree")
default:
    print("Nothing")
}

//Certain Situations you want Fall through
//Unlike other languages have to assert follow through rather than it being default
