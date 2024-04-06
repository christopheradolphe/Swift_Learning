import Cocoa

//Goal:
//- Make class heirarchy for animals starting with animals
//- Make dog and cat subclasses of animals
//- Make corgi and poodle subclasses of dog
//- Make persian and lion subclasses of cat

//Class properties:
// Animal: class should have a legs integer property
// Dog: should have a speak method that prints generic dog barking string but each subclass different print
//Cat: matching speak method with each subclass printing something different
//Cat: should have isTame boolean property provided using an initializer

class Animal {
    let legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Bark")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Woof")
    }
}

class Golden: Dog {
    override func speak() {
        print("Hello")
    }
}

class Cat: Animal {
    let isTame: Bool
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak () {
        print("Hiss")
    }
}

class Persian: Cat {
    override func speak() {
        print("Hissing")
    }
}

class Lion: Cat {
    override func speak() {
        print("Prrr")
    }
}
