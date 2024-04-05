import Cocoa

//Inheritance
//Inherits functionality (methods and properties from another class (parent or super class)

//Enabling Inheritance
//Write colon after child class name then add the parent class name

//Parent Name
class Employee {
    let hours: Int
    init(hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print("I work \(hours) a day")
    }
}

class Developer: Employee {
    func work() {
        print("I love writing code so keep going.")
    }
}

class Manager: Employee {
    func work() {
        print("I love going to meetings")
    }
}

//Both classes can refer to functions and properties of parent class Employee
var Chris = Developer(hours: 40)
var James = Manager(hours: 20)
print(James.hours)
Chris.work()
James.work()
Chris.printSummary()
James.printSummary()

//Modifying Inherited function
//Rule: ***If child wants to change method from parent class, must use override keyword
//If signatures are different (parameters are different type or different number) do not need

class HR: Employee {
    override func printSummary() {
        print("I am HR who will work \(hours) a day")
    }
}

var Jason = HR(hours: 5)
Jason.printSummary()

//Disable inheritance
//Can use final keyword to disable a class from being inherited
final class Janitor: Employee {
    override func printSummary() {
        print("I love cleaning")
    }
}

//This will generate an error
class Cleaner: Janitor {
    
}
