import Cocoa

//Continue skips rest of loop code and goes to next iteration (skips one iteration)


//Break causes us to leave the loop entirely (skips all remaining iterations)

let number = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100000 {
    if i.isMultiple(of: number) && i.isMultiple(of: number2){
        multiples.append(i)
        if multiples.count == 10 {
            break
        }
    }
}
