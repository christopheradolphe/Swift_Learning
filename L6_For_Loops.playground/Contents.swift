import Cocoa

let platforms = ["iOS", "macOS", "tvOS"]

//Looping over a dataset
for os in platforms {
    print("We can work on \(os)")
}


//Looping over a certain number of times
for i in 1...12 {
    print("The \(i) times table")
    
    for j in 1...12 {
        print("   \(j) x \(i) = \(j*i)")
    }
    
    print()
}

//Looping up to but not including (useful for arrays as start from 0)
for i in 1..<5 {
    print(i)
}

//Underscores for variable in loop (When you don't need the variable in array)
let arr = ["Sterling", "Cyril", "Lana", "Ray"]
for _ in arr {
    print("[CENSORED] is a special agent!")
}

//Looping from index to end of array (useful for splicing)
print(arr[1...])
