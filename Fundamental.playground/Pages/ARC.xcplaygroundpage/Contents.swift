import Foundation

class Reference {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var classArray: [Reference] = []

func addClassToArray(_ ref: Reference) {
    classArray.append(ref)
}

// start = 1
var ref1 = Reference(name: "1") // +1
var ref2 = ref1 // +1

CFGetRetainCount(ref1) // 3
CFGetRetainCount(ref2) // 3

addClassToArray(ref1) // +1
addClassToArray(ref1) // +1

CFGetRetainCount(ref1) // 5
CFGetRetainCount(ref2) // 5
