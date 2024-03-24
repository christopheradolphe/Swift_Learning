import Cocoa

//Goal: FizzBuzz ->Loop from 1->100
//IF multiple of 3 -> print "Fizz"
//If multiple of 5 -> print "Buzz"
//If multiple of 3 and 5, print "FizzBuzz"

for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print("\(i)")
    }
}
