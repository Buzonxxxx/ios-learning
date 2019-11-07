// [nil coalescing]

let myOptional1: String?

myOptional1 = nil

let name = myOptional1 ?? "Louis"
print(name)


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

