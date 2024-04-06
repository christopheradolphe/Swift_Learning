import Cocoa

//Optional Chaining
//Simplified syntax for reading optionals inside of optionals
//Use ? to chain optionals 


let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

//Here the ? mark after random element tells us if the optional has a value inside unwrap it and then ...
        //This is optional chaining
//If optional was empty optional chaining does nothing and it will just send back same optional you had before
//Return value of optional chaining is always an optional
//Optional chains can go as long as you want but as soon as any part sends back nil, rest of line is ignored


struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)
