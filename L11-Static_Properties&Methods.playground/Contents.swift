import Cocoa

//Static Properties/Methods
//Adding properties or methods to struct itself rather than on instance of struct

//Main purpose:
//1. Storing fixed data to be access in multiple instances
//2. Creating example data

//Essentially all instances of struct will all have same function or property

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
}

//Don't need to create instance to call static methods or properties
//They are applied to struct class itself
School.add(student: "Taylor Swift")
print(School.studentCount)

//Rules when mixing static and non-static properties and methods
//1. Static properties and methods can't use non-static properties as would be unsure which instance we are referring to
//2. For non-static code to access static code use type's name such as Schoo.studentCount or can you Self
        //***Note: self -> instance, Self -> struct itself



