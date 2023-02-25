import UIKit

var closureArray: [() -> Void] = []
func addClosureToArray(closure: @escaping () -> Void) {
    closureArray.append(closure)
}
func runClosures() {
    for closure in closureArray {
        closure()
    }
}
let closure1 = {
    print("Closure 1")
}
let closure2 = {
    print("Closure 2")
}
addClosureToArray(closure: closure1)
addClosureToArray(closure: closure2)
runClosures() // Output: "Closure 1", "Closure 2"
closureArray[0] = closure2
runClosures() // Output: "Closure 2", "Closure 2"
