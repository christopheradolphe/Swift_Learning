import Cocoa

//Static Properties/Methods
//Adding properties or methods to struct itself rather than on instance of struct

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


//Main purpose:
//1. Storing fixed data to be access in multiple instances
//2. Creating example data

//***Static Properties to Organize common data in apps
//Can refer to AppData anywhere in code now without creating instance
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

//***Static to create example data
struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cfed", password: "pass")
}
//Can now use Employee.example for layout in SwiftUI preview

//Note: Enums should be used for constant data in App as we don't ever want to create instance of struct constant data by accident
enum AppDataVal: String {
    case version = "http"
    case two = "excellent"
}
print(AppDataVal.version.rawValue)
