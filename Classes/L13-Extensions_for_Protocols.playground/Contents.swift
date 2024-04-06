import Cocoa

//Protocol Extensions = Extensions written for protocols
//Can extend protocols to include method implmentations

//Usefulness of Protocol Extensions
//Let us add functionality (methods or computed property) to all types agreeing to certain protocl

extension Array {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("There are some guests")
}


//**Note: Arrays, Sets and Dictionaries all conform to protocol Collection

//Protocol Extensions
//So if we wanted all Collection to contain isNotEmpty we could extend protocol
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

//Default Protocol methods or properties
//We can add default implementations of the method as well (also shown above) but can only do inside extensions not inside protocol
protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}
