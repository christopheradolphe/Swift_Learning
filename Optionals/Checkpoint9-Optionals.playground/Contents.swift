import Cocoa

//Goal: write functions that accepts optional array of integers and returns on randomly
//-If array missing or empty, return random int between 1 and 100
//-write in one line of code


func numberReturn(arr: [Int]?) -> Int { arr?.randomElement() ?? Int.random(in: 1...100) }


var arr: [Int]? = [1, 4, 5, 6, 8, 3, 2]
print(numberReturn(arr: arr))
arr?.removeAll()
print(numberReturn(arr: arr))
arr = nil
print(numberReturn(arr: arr))
