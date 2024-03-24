import Cocoa

//Two important things with return value
//1. Specify return value
//2. Have a return statement in function
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

//If one line of code in function return not needed as Swift knows
func rollDiceSpecial() -> Int {
    Int.random(in: 1...6)
}

//Practice Examples

func sameLetters(str1: String, str2: String) -> Bool {
    return str1.sorted() == str2.sorted()
}

print(sameLetters(str1: "cab", str2: "abc"))
print(sameLetters(str1: "cabcaa", str2: "abcacb"))

func pythagorasTheorom(a: Double, b: Double) -> Double {
    return sqrt(pow(a, 2) + pow(b,2))
}

print(pythagorasTheorom(a: 3, b: 4))
