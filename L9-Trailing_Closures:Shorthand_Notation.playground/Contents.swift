import Cocoa

//Trailing closures
//Don't have to specify input or return type for closure and can get rid of (by:)

let team = ["Gloria", "Suzanne", "Chris", "James"]

let sorted = team.sorted(by:{ (a: String, b: String) -> Bool in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    } else {
        return a < b
    }
})

//Can instead get rid of types and rid of by:
//Trailing Closure
//Use when few lines of code in closure to make easier to read
let sortedTrailing = team.sorted { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    } else {
        return a < b
    }
}


//Shorthand syntax
//Use when few variables and not many lines of code
//Use $0, $1, $2, etc to specify variables and do not need variables or in to specify
let sortedShortened = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    } else {
        return $0 < $1
    }
}

//Eg. Good for reversed sort
let reverseTeam = team.sorted { $0 > $1 }

//Filters
//Filter only returns values from variable array that return True to closure
let cOnly = team.filter { $0.hasPrefix("C") }
print(cOnly)

//Maps
//Map modifies all elements in array to perform closure
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)
