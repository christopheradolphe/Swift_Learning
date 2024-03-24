import Cocoa

//Use of Labelled Statements
//***To break out of nested loops***


let options = ["up", "down", "left", "right"]
let secretPattern = ["up", "up", "right"]

print("Option 1")
for option1 in options {
    for option2 in options {
        for option3 in options {
            let pattern = [option1, option2, option3]
            
            if pattern == secretPattern {
                print("Pattern is \(pattern)")
            }
            print("Still iterating")
        }
    }
}

//Inefficient as once finding pattern still filter through rest of options
//Goal: break out of outermost loop

print("Option 2")
outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            let pattern = [option1, option2, option3]
            
            if pattern == secretPattern {
                print("Pattern is \(pattern)")
                break outerLoop
            }
            print("Still iterating")
        }
    }
}
