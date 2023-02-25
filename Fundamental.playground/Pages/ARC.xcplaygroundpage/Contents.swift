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

var ref1 = Reference(name: "1")
var ref2 = ref1

CFGetRetainCount(ref1)
CFGetRetainCount(ref2)

addClassToArray(ref1)
addClassToArray(ref1)

CFGetRetainCount(ref1)
CFGetRetainCount(ref2)
