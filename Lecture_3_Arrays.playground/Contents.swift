import Cocoa

//Arrays
//All values in array must be of same type
var beatles = ["John", "Paul", "George",]
print(beatles[0])

//Appending
beatles.append("Ringo")

//Creating Empty Array
//First Way
var scores = Array<Int>()
//Second Way
var albums = [String]()


scores.append(100)
scores.append(10)
print(scores[0])


//Useful functions

//1. Count -> .count
print(albums.count)

//2. Remove element at index -> .remove(at: x)
scores.remove(at: 1)
print(scores.count)

//3. Remove all elements in array -> .removeAll()
scores.removeAll()
print(scores.count)

//4. Check if element in array -> .contains()
let bondMovies = ["CR", "Spectre", "No Time to Die"]
print(bondMovies.contains("CR"))

//5. Sort Array -> .sorted()
print(bondMovies.sorted())

//6. Reverse Array -> .reversed()
print(bondMovies.reversed())
