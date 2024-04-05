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
