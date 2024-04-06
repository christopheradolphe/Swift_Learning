import Cocoa

//All copies of a class instance share same data
//Any changes to any of copies will change the other copies
    //All copies of class refer back to same underlying pot of data

class User {
    var username = "Anonymous"
}

var user1 = User()

//Creating copy of instance -> making new var equal to original or a copy
//This results in both user1 and user2 having always same data
var user2 = user1
user2.username = "Chris"
print(user1.username)

//Structs do not take on this behaviour -> structs create deep copy essentially
//This is because structs are value types but classes are reference types
    //***Classes are essentially just pointers
    //Structs hold simple values




//We can avoid with a deep copy but somtimes this sharing of data is useful in an app
//We can perform deep copy by ourself

//Deep copy
class UserNew {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = self.username
        return user
    }
}
