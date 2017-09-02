//: Playground - noun: a place where people can play

import UIKit

// MARK: - Insertion sort
//func insertionSort<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
//    var a = array
//    for x in 1..<a.count {
//        var y = x
//        let temp = a[y]
//        while y > 0 && isOrderedBefore(temp, a[y - 1]) {
//            a[y] = a[y - 1]
//            y -= 1
//        }
//        a[y] = temp
//    }
//    return a
//}

//: Comlexity: O(n^2), Storage: 2N
//: ![Sort example](Insertion_sort_example_2n_storage.pdf)

func insertionSort<Element>(array: [Element]) -> [Element] {
    // check for tirivial case
    // we have only 1 element in array
    guard array.count > 1 else { return array }

    var output: [Element] = array

    for primaryIndex in 1..<output.count {
        let primaryElement = output[primaryIndex]
        var tempIndex = primaryIndex - 1

        while tempIndex > -1 {
            // primaryElement and element at tempIndex are not ordered. We need to change them
            // Then, remove primary element
            // tempIndex + 1 - primaryElement always after tempIndex
            output.remove(at: tempIndex + 1)
            // and insert primary element before tempElement
            output.insert(primaryElement, at: tempIndex)
            tempIndex -= 1
        }
    }

    return output
}

//: [Next](@next)
