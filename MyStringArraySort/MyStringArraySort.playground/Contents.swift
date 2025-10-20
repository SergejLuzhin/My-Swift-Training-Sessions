import Foundation

func getChar(string: String, i: Int) -> Character {
    return string[string.index(string.startIndex, offsetBy: i)]
}

func LeftStringIsLess(stringLeft: String, stringRight: String) -> Bool {
    let bound: Int = stringLeft < stringRight ? stringLeft.count : stringRight.count
    for i in 0..<bound {
        if getChar(string: stringLeft, i: i).lowercased() < getChar(string: stringRight, i: i).lowercased(){
            return true
        }
        else if getChar(string: stringLeft, i: i).lowercased() > getChar(string: stringRight, i: i).lowercased(){
            return false
        }
    }
    return true
}

var names: [String] = ["John", "Jane", "Jim", "Joan"]

for i in 0..<names.count{
    for j in i+1..<names.count{
        if !LeftStringIsLess(stringLeft: names[i], stringRight: names[j]) {
            var temp: String = names[i]
            names[i] = names[j]
            names[j] = temp
        }
    }
}

print(names)

