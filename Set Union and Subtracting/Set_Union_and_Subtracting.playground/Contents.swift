import Foundation

let setOfInts1: Set<Int> = [1, 2, 3, 4, 5]
let setOfInts2: Set<Int> = [3, 4, 5, 6, 7]

var minusSet: Set<Int> = []
var plusSet: Set<Int> = []

for i in setOfInts1 {
    if !plusSet.contains(i) { //could've used setOfInts1.union(setOfInts2)
        plusSet.insert(i)
    }
    if !setOfInts2.contains(i) { // could've used setOfInts1.subtracting(setOfInts2)
        minusSet.insert(i)
    }
}

for i in setOfInts2 {
    if !plusSet.contains(i) {
        plusSet.insert(i)
    }
}


print(plusSet)
print(minusSet)
