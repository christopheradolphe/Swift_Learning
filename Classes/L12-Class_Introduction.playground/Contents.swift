import Cocoa

//Commonalities with Structs
//1. Create and name them
//2. Can add properties and methods including property observers and access control
//3. Create custom initializers to configure new instances

//Differences with Structs
//1. Can build on class on top of another (gains all properties and methods) and can override some methods
//2. No memberwise initializer for classes due to (1) so always need to have initializer or assign defaults to all properties
//3. When you copy instance of a class, both copies share same data, so modifying one will modify both
        //Most important point for why classes used (if changed name in one screen, name should change in all copies
//4. When final copy of class instance is destroyed, Swift can optionally run a special function called deinitializer
//5. Even if you make a class constant (with let), you can still change its properties if they are variables
        // Constant class means we can't change what pot our copy points to, but we can still modify class itself


//Example Creation of Class
//Very similar to struct aside from struct vs class declaration
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10
