func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

// normal way
func multiply(no1: Int, no2: Int) -> Int {
    return no1 * no2
}
calculator(n1: 2, n2: 3, operation: multiply)

// use closure
calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
})

// shorter closure
calculator(n1: 2, n2: 3, operation: { (no1, no2) in no1 * no2 })

// trailing closure (hard to read
print(calculator(n1: 2, n2: 3) { $0 * $1 })

// real case
let array = [6, 2, 3, 9, 4, 1]
print(array.map({ $0 + 1 }))
print(array.map{ "\($0)" })

