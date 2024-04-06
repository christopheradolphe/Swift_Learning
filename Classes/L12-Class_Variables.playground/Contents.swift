import Cocoa

class User {
    var name = "Paul"
}

let user = User()
user.name = "Chris" //This changes with no issue but we set user instance to be constant

//Let on instantiation forces the class instance to not change
//What we can't do is assign it to whole new instance of User
user = User()

//If we set instance to be variable then we could assign to whole new instance or a copy
var userNew = User()
user.name = "James"
userNew = User()

//***Importance***
//With variable properties, always need to be cautious that other copies of class can alter the properties elsewhere in program
    //Unlike with structs as let with structs means we can not modify

//*** mutating not used with classes - only in structs

