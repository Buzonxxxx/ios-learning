// [Force unwrapping]
let optional1: String?
optional1 = "Louis"
let text = optional1!
print(text)

// [Check for nil value]
let optional2: String?
optional2 = nil
if optional2 != nil {
    let text = optional2!
    print(text)
} else {
    print("myoptional was found to be nil")
}

// [Optional binding]
let optional3: String?
optional3 = "Louis"
if let safeOptional = optional3 {
    let text = safeOptional
    print(text)
} else {
    print("myoptional was found to be nil")
}

// [Nil coalescing]
let optional4: String?
optional4 = nil
let myText = optional4 ?? "I'm default value"
print(myText)


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

