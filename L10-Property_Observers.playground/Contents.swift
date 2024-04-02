import Cocoa

//Property Observers
// Special pieces of code associated with property that run when properties change

//Two types
//1. didSet: observer to run just AFTER the property changed -> more commonly used
//2. willSet: observer to run just BEFORE the property changed

//When to use:
//When you perform function whenever a value changes in code

struct Game {
    var score = 0
}

//var game = Game()
//game.score += 10
//print("Score is now \(game.score)")
//game.score -= 3
//print("Score is now \(game.score)")

//Would be better if monitored game score and anytime changed we did something

struct GameObserver {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var gameNew = GameObserver()
gameNew.score += 5

//willset we can use newValue; didSet we can use oldValue as auto provided by Swift


struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
