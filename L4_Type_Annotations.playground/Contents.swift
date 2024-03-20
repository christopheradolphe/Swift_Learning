import Cocoa

//Assign Type for one of Three Reasons
//1. Swift can't figure out what type to be used
//2. Want swift to use a different type than its default (eg Double type but assign it to 99)
//3. Variable created but value will be assigned later


//Assigning Major Datatypes
let surname: String = "Chris"
let pi: Double = 99 // This makes it 99.0000
let luckyNumber: Int = 13
var isAuthenticated: Bool = true

//Arrays -> All four do same thing
var albums: [String] = ["Red", "Fearless"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

//Dictionary
var user : [String: String] = ["id": "@cadolphe"]

//Sets
var books: Set<String> = Set(albums)

//Enums
enum UIStyle{
    case light, dark, system
}

var style = UIStyle.light
style = .dark


//Constants
let username: String
username = "cadolphe" //Legal as only set this value once but can't set again


