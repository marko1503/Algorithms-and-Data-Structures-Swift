//: Playground - noun: a place where people can play

import Foundation

// MARK: - Insertion sort algorithm
//: Comlexity: O(n^2), Storage: 2N
//: ![Sort example](Insertion_sort_example_n_storage.pdf)

func insertionSort<Element>(array: [Element]) -> [Element] where Element: Comparable {
    // check for tirivial case
    // we have only 1 element in array
    guard array.count > 1 else { return array }

    var output: [Element] = array
    let elementsCount = output.count

    for primaryIndex in 0..<elementsCount {
        let primaryElement = output[primaryIndex]
        var tempIndex = primaryIndex - 1

        while tempIndex > -1 && output[tempIndex] > primaryElement {
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
insertionSort(array: array)


//: [Next](@next)
