import Foundation

// retain count when init, assign or pass as an argument to a function

class Reference {
    var name: String
    
    init(name: String = "") {
        self.name = name
    }
}

var classArray: [Reference] = []

func addClassToArray(_ ref: Reference) {
    classArray.append(ref)
}

// start = 1
var ref1 = Reference() // +1
var ref2 = ref1 // +1

CFGetRetainCount(ref1) // 3
CFGetRetainCount(ref2) // 3

addClassToArray(ref1) // +1
addClassToArray(ref1) // +1

CFGetRetainCount(ref1) // 5
CFGetRetainCount(ref2) // 5


func unexpectedResult() {
    // start = 1
    var ref1 = Reference()
    var ref2 = ref1

    CFGetRetainCount(ref1) // 8
    CFGetRetainCount(ref2) // 7

    addClassToArray(ref1)
    addClassToArray(ref1)

    CFGetRetainCount(ref1) // 6
    CFGetRetainCount(ref2) // 5
}

unexpectedResult()
