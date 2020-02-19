
/*
* given string 'abcdefglkjhgfd', and number n
*
* i.g.
* print(str, 2) => 'aba'
* print(str, 3) => 'abcba'
* print(str, 4) => 'abcdcba'
*
*/

//func printStr(str:String, n: Int ) -> String {
//    var ans = ""
//    for var i in 0...n {
//        let index = str.index(str.startIndex, offsetBy: i);
//        ans = ans+String(str[index])
//        if (i == n - 1) {
//            i -= 1
//            while i >= 0 {
//                let index = str.index(str.startIndex, offsetBy: i);
//                ans = ans + String(str[index])
//                i -= 1;
//            }
//            return ans
//        }
//    }
//    return "not found"
//}

//print("The result is: \(printStr(str: "abcdefglkjhgfd", n: 3))")

// [random]
// Int/Float
//print(Int.random(in: 1...10))
//print(Int.random(in: 1..<10))

// array
//var arr = [1,2,3]
//print(arr.randomElement()!)
//arr.shuffle()
//print(arr)

// [struct]
//struct Town {
//    let name: String
//    var citizens: [String]
//    var resources: [String: Int]
//
//    init(name: String, citizens: [String], resources: [String: Int]) {
//        self.name = name
//        self.citizens = citizens
//        self.resources = resources
//    }
//
//    func fortify(){
//        print("Defences increased!")
//    }
//}
//
//var anotherTown = Town(name: "Louisland", citizens: ["Louis", "Anney"], resources: ["Mondy": 100, "Water": 1000])
//anotherTown.fortify()
//print(anotherTown.name)

for _ in 0...1 {
    print("hello")
}





