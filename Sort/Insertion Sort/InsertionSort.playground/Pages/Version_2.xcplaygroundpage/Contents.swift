//: [Previous](@previous)

import Foundation

//: Comlexity: O(n^2), Storage: N
//: ![Sort example](Insertion_sort_example_n_storage.pdf)

//public func insertionSort() -> [Element] {
//    // check for tirivial case
//    // we have only 1 element in array
//    guard self.count > 1 else { return self }
//
//    var output: [Element] = self
//    let elementsCount = output.count
//
//    for primaryIndex in 0..<elementsCount {
//        let primaryElement = output[primaryIndex]
//        var tempIndex = primaryIndex - 1
//
//        while tempIndex > -1 {
//            // primaryElement and element at tempIndex are not ordered. We need to change them
//            // Then, remove primary element
//            // tempIndex + 1 - primaryElement always after tempIndex
//            output.remove(at: tempIndex + 1)
//            // and insert primary element before tempElement
//            output.insert(primaryElement, at: tempIndex)
//            tempIndex -= 1
//        }
//    }
//
//    return output
//}

//: [Next](@next)
