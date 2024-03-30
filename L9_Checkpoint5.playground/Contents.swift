import Cocoa

//Purpose: Use sorted, map, filter all with closures

//Input: array of ints called lucky numbers
//Output:
//-Filter out numbers that are even
//-Sort array in ascending order
//-Map them to strings in format "7 is a lucky number"
//-Print resulting array one item per line

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func luckyNumberFinder(values: [Int]) -> Void {
    //Filter out numbers that are not even
    let even = values.filter { $0 % 2 != 0 }
    print(even)
    
    //Sort array in ascending order
    let ascending = even.sorted { $0 < $1 }
    print(ascending)
    
    //Map them to strings
    let strings = ascending.map { String($0) + " is a lucky number"}
    
    for val in strings {
        print(val)
    }
}

luckyNumberFinder(values: luckyNumbers)


