import Cocoa

//Purpose of Enums
// Defining a type that can only have a certain number of possible values (eg. month, weekday)

//Creating Enum
enum Weekday{
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
}

//Less lines for creating Enum
enum Months{
    case January, February, March, April
}


//Using a Enum
var day = Weekday.Monday
print(day)

//**Rassigning a variable that is an Enum
//Type is already an enum so we do not need to respecify enum
day = .Wednesday

var currentBill = Months.April
print(currentBill)

//Seem to be unable to do enums with integers
