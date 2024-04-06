import Cocoa

//Task:
//-Make protocol that describes a building with various properties and methods
//      -Protocol Requires:
                //1. Property storing how many rooms it has
                //2. Property storing cost as an integer
                //3. Property storing name of estate agent responsible
                //4. Method for printing the sales summary of the building
//-Create struct House that conforms to Building

protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var agent: String { get }
    func Summary() -> Void
}


struct House: Building {
    let rooms: Int
    let cost: Int
    let agent: String
    func Summary() {
        print("Summary ....")
    }
}
