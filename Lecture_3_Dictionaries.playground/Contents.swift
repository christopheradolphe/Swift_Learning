import Cocoa

//Creating a Dictionary
//Must be one specific type for all keys and one specific type for all values
var employee = ["Name": "Taylor Swift", "Job": "Singer", "Location": "Toronto"]

//Accessing Values in Dictionary
print(employee["Name"])
print(employee["Job"])
print(employee["Location"])
//For all these optional results with warning as Swift is saying there may not be a value

//***Providing default when Accessing Dictionary (This will always produce a string back)
//Don't always need this
print(employee["Name", default: "Unknown"])

//Combining different key and value types
let olympics = [
    2012 : "London",
    2016 : " Rio",
    2021 : "Tokyo"
]


//Creating Empty Dictionary
var heights = [String: Int]()

//Assigning key value pair
heights["Yao Ming"] = 229
heights["Shaq"] = 212
heights["Yao Ming"] = 220 //Overwriting
print(heights)

