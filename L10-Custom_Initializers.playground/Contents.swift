import Cocoa

//Initializers are created by Swift by default but might want some logic implemented
//Initializer defined with init, and no func keyword is needed
//Self is used to refer to struct instance
//Only need to use self if initializer or param of function has same name as property

struct Player {
    let name: String
    let number: Int
    
    init(name:String, number: Int) {
        self.name = name
        self.number = number
    }
}

//RULE: ALL PROPERTIES MUST HAVE VALUE BY TIME INITIALIZER ENDS

//Swift by default provides a memberwise initializer (one default one for non-default params)
//After creating a initializer, Swift default memberwise initializer is not available
//To avoid this we can create an extension to a struct as follows:


struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

//Now we have both memberwise initializer (only assign name) and the initializer with no params
