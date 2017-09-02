//: [Previous](@previous)

import Foundation

func insertionSort<Element>(array: [Element], sortDirection: (Element, Element) -> Bool) -> [Element] where Element: Comparable {
    // check for tirivial case
    // we have only 1 element in array
    guard array.count > 1 else { return array }

    var output: [Element] = array

    for primaryIndex in 1..<output.count {
        let primaryElement = output[primaryIndex]
        var tempIndex = primaryIndex - 1

        while tempIndex > -1 && sortDirection(primaryElement, output[tempIndex]) {
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

//let array = [Int]()
//insertionSort(array: array)

//let array = [5]
//insertionSort(array: array)

//let array = [5, 8]
//insertionSort(array: array)

//let array = [8, 5]
//insertionSort(array: array)

//let array = [1, 2, 3, 4, 5, 6, 7, 8]
//insertionSort(array: array)

//let array = [8, 7, 6, 5, 4, 3, 2, 1]
//insertionSort(array: array)

let array = [7, 2, 1, 6, 8, 5, 3, 4]
insertionSort(array: array, sortDirection: <)

//: [Next](@next)
