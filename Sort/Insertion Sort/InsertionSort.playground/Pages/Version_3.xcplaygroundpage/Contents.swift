//: [Previous](@previous)

import Foundation

//public func insertionSort(sortDirection: (Element, Element) -> Bool) -> [Element] {
//    // check for tirivial case
//    // we have only 1 element in array
//    guard self.count > 1 else { return self }
//
//    var output: [Element] = self
//
//    for primaryIndex in 1..<output.count {
//        let primaryElement = output[primaryIndex]
//        var tempIndex = primaryIndex - 1
//
//        while tempIndex > -1 && sortDirection(primaryElement, output[tempIndex]) {
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
