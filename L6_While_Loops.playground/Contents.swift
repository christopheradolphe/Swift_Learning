import Cocoa

//When to use instead of for loop
// Until arbitrary condition becomes false

//Checks case when loop completes and not during
var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off")


var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled \(roll)")
}
