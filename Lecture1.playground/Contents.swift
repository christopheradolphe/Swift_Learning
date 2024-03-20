import Cocoa


//Strings

var greeting = "Hello, playground"

var playerName = "Chris"
print(playerName)

let newPlayer = "James"
print(newPlayer)

let count = newPlayer.count

var upperPlayer = newPlayer.uppercased()
print(upperPlayer)

let check = upperPlayer.hasPrefix("Ja")
print(check)


//Numbers

var number = 10
number *= 3
print(number)
number += 5
print(number)
print(number.isMultiple(of: 4))


//Decimal Values

let a = 0.1
let b = 0.2
let c = a + b
print(c)
