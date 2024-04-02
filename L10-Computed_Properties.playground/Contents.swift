import Cocoa

//Two kinds of properties in struct
//1. Stored Property: variable or constant that holds piece of data within struct
//2. Computed Property: calculates the value of property dynamically every time its accessed

//When to use Computed Properties
//- If dedpends on other data
//- If value changes a lot (Performance)

struct Employee {
    let name: String
    var vacationRemaining: Int
}

var archer = Employee(name: "Sterling", vacationRemaining: 14)
archer.vacationRemaining -= 5


//Instead if we want to keep how many original vacation they had we could use computed property

//To write to dynamic property, need to have GETTER and SETTER
//eg. if we set should vacationAllocated change or should vacationTaken

//Constants can not be computed properties

struct EmployeeDynamic {
    let name: String
    var vacationAllocated: Int
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            //CAN USE IF/ELSE blocks for logic in here
            return vacationAllocated - vacationTaken
        } set {
            vacationAllocated = vacationTaken + newValue //newValue auto provided by Swift
        }
    }
}

