import Cocoa

//Class initializers are different than struct initializers
//If a child class has any custom initializers it must always call the parent's initializers after it has finished setting up its own properties
        //We do this on our own

//No memberwise initializer for classes so have to create one for yourself
//Either need to provide own initializer or provide default values for all properties

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

//Error for initializers
class CarBad: Vehicle {
    let isConvertible: Bool
    
    init(isConvertible: Bool) {
        self.isConvertible = isConvertible
    }
}

//Swift refuses to build this as we have not set isElectric from parent class

//***Running Parent Initializers with Child class
//We need to ask parent initializer to run its own initializer
//super: keyword that refers to parent class
class Car: Vehicle {
    let isConvertible: Bool
    
    init(isConvertible: Bool, isElectric: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

//***Note: if subclass does not have any of its own initializers, it automatically inherits the initializers of the parent class
