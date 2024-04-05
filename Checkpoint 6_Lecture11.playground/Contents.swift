import Cocoa

//Create struct to store information about a car
//Properties: model, number of seats, current gear
//Method to change gears up and down
//Think about variables and access control
//Don't allow any gears other than 1-10

struct Car {
    public let model: String
    public let numberOfSeats: Int
    private(set) var currentGear: Int
    
    init(model: String, numberOfSeats: Int, currentGear: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = currentGear
    }
    
    mutating func changeGear(to newGear:Int) {
        if newGear >= 1 && newGear <= 10 {
            currentGear = newGear
        } else {
            print("Invalid gear. Gear can only be between 1 and 10.")
        }
    }
}

//Testing
var Mercedes = Car(model: "New", numberOfSeats: 6, currentGear: 2)
print(Mercedes.currentGear)
Mercedes.changeGear(to: 12)
Mercedes.changeGear(to: 2)
print(Mercedes.currentGear)
