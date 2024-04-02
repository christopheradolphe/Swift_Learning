import Cocoa

//Sometimes we want to make properties private to not be able to modify

//eg. Changing amount of money in account
//Withdraw and deposit can change values but funds shouldn't be able to be modified

//Access control keywords
//private: Nothing outside struct can modify
//private(set): Let anyone read value directly but not modify
//fileprivate: don't let anything outside current file modify this value
//public: let anyone, anywhere use this and modify

//***WHEN WE HAVE PRIVATE PROPERTY, SWIFT DOES NOT AUTOGENERATE INITIALIZER SO HAVE TO ALWAYS MAKE ONE YOURSELF

struct BankAccount {
    private var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
