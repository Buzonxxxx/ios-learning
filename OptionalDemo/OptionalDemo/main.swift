// [Force unwrapping]
//let myoptional: String?
//myoptional = "Louis"
//let text: String = myoptional!
//print(text)

// [check for nil value]
//let myOptional: String?
//myOptional = nil
//if myOptional != nil {
//    let text = myOptional!
//    print(text)
//} else {
//    print("myoptional was found to be nil")
//}

// [optional binding]
//let myOptional: String?
//myOptional = "Louis"
//if let safeOptional = myOptional {
//    let text = safeOptional
//    print(text)
//} else {
//    print("myoptional was found to be nil")
//}

// [nil coalescing]
//let myOptional: String?
//myOptional = nil
//let text = myOptional ?? "I'm default value"
//print(text)


// [Optional Chaining]
struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()
myOptional?.method()
print(myOptional?.property ?? 0)

