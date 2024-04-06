import Cocoa

//Protocols
//Let us define what kinds of methods/properties we expect data type (eg. class) to have

//protocol: keyword to create protocol type
//Inside protocol we list all methods we require in order for protocol to work way we expect
//Methods do not contain any code (ie. no bodies) but we specify names, params and return types
//Can also mark methods as throwing or mutating

protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

//1. Adopting or conforming to protocol
//Similar to subclasses with : followed by protocol name
//We can now create structs, classes or enums that implement the requirements for protocol
//Bascially a class/struct that has all properties or funcs in protocol
//On top of elements in protocol can add other methods and properties as well
struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I am driving \(distance)km")
    }
    func openSunRoof() {
        print("It is a great day!")
    }
}

//2. Can use protocol for parameters in functions such that the input argument must be class/struct that conforms to protocol (ie. : Protocol with class definition)
//2b) Can similarly return a protocol from a function
func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)


//Protocols specifying properties
//When protocols have properties must assign whether they have read or write permissions with get and set respectively in curly braces after
//When you use set, you can't conform with a let as its constant and can't be set
//get -> not private
//set -> var and not private
//Can't have set only properties must be get set together
//Always use var inside protocol itself
protocol VehicleProperties {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

//3. Can create array with different classes that obey protocol
//Very important for having array with different types

struct Bicycle: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()

var chrisVehicles = [Vehicle]()
chrisVehicles.append(bike)
chrisVehicles.append(car)
