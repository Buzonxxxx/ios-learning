protocol CanFly {
    func fly()
}

//extension CanFly {
//    func fly() {
//        print("The object flaps its wings and lifts off into the sky.")
//    }
//}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }   
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    func soar() {
        print("The eagle glides in the air usingair currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()

myPlane.fly()
let meseum = FlyingMuseum()
meseum.flyingDemo(flyingObject: myEagle)
meseum.flyingDemo(flyingObject: myPlane)
