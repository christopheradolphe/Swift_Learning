import Cocoa

//Problem: Create function that finds sqrt of int input without sqrt function
// Throw errors if out of a range
// Throw error if no squareroot

enum sqrtErrors: Error {
    case outOfBounds, noRoot
}

    
func sqrtFinder(_ value: Int) throws -> Int {
    if value > 10000 || value < 1 {
        throw sqrtErrors.outOfBounds
    }
    var left: Int = 1
    var right: Int = 100
    var middle: Int
    var squared: Int
    //Binary Search
    while (left + 1) != right {
        middle = (left+right) / 2
        squared = middle*middle
        if squared == value {
            return middle
        } else if squared > value {
            right = middle
        } else {
            left = middle
        }
        print("\(left), \(middle), \(right)")
    }
    
    if left*left == value {
        return left
    } else if right*right == value {
        return right
    } else {
        throw sqrtErrors.noRoot
    }
}

do {
    let test = try sqrtFinder(1250)
    print(test)
} catch sqrtErrors.noRoot{
    print("Value has no root")
} catch sqrtErrors.outOfBounds {
    print("Value has to be between 1 and 10000")
}
