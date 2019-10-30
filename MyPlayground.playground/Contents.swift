
/*
* given string 'abcdefglkjhgfd', and number n
*
* i.g.
* print(str, 2) => 'aba'
* print(str, 3) => 'abcba'
* print(str, 4) => 'abcdcba'
*
*/

func printStr(str:String, n: Int ) -> String {
    var ans = ""
    for var i in 0...n {
        let index = str.index(str.startIndex, offsetBy: i);
        ans = ans+String(str[index])
        if (i == n - 1) {
            i -= 1
            while i >= 0 {
                let index = str.index(str.startIndex, offsetBy: i);
                ans = ans + String(str[index])
                i -= 1;
            }
            return ans
        }
    }
    return "not found"
}

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







