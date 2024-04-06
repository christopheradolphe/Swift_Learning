import Cocoa

//Deinitializer
//Called when last remaining reference to a class instance is destroyed
    //Important as we may have multiple copies of it unlike structs and so we may want to know when they are all destroyed

//Notes on deinitializers
//1. Like init, we do not use func with deinitializers
//2. Deinitializers never take parameters or return data and thus we do not use parentheses
//3. Deinitializer automatically called when the final copy of class instance is destroyed
//4. We never call deinitializers directly, they are called automatically
//5. Structs don't have deinitiaizers cause they can't be copied
//Best to put deinitializer at end of class and init at start just like a book

//Keyword: deinit
    // Note: unlike init, deinit has no parentheses so just deinit { ...

//Showing when deinit is called

class User {
    let id: Int
    
    init (id: Int) {
        self.id = id
        print("User id is \(self.id)")
    }
    
    deinit {
        print("User \(id) is deinitialized.")
    }
}

//At end of loop its deinitialized cause at end of scope of for loop it can't be used anymore
//Scope is any section of code with {} around them
//Code inside {} can't be used outside cause they are "out of scope"
for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id) is in control")
}
