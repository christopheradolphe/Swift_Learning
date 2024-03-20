import Cocoa

let array: [String] = ["James", "Chris", "Josh", "Daniel", "Alex", "Josh", "Alex", "ALex"]

//Print out number of items in array
print("Number of items in array: \(array.count)")

//Print out number of unique items in array
print("Unique items in array: \(Set(array).count)")
