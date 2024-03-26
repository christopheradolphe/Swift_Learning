import Cocoa

//After removing items from array Swift smartly saves memory by removing mem allocation for deleted items
//Might want to delete then add and removing mem allocation is then costly to re-add

var arrayTest = [1,2,4,7,8,9]
arrayTest.removeAll()

//Keep memory allocation by the following:
var arrayTest2 = [1,2,3,4,5,6]
arrayTest2.removeAll(keepingCapacity: true)
