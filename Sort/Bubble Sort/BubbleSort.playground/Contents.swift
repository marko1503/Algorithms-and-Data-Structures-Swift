//: Playground - noun: a place where people can play

import Foundation

// MARK: - Bubble sort
extension Array where Element: Comparable {

    public func bubbleSort(sortDirection: (Element, Element) -> Bool) -> Array<Element> {
        // check for tirivial case
        // we have only 1 element in array
        guard self.count > 1 else { return self }

        var output: [Element] = self
        let elementsCount = self.count

        for index in 0..<elementsCount {
            let passes = (elementsCount - 1) - index

            // "half-open" range operator
            for compareIndex in 0..<passes {
                let compareElement = output[compareIndex]

                // compare / swap positions
                if (compareElement > output[compareIndex + 1]) {
                    swap(&output[compareIndex], &output[compareIndex + 1])
                }
            }
        }
        
        return output
    }
    
}

let numberList : Array<Int> = [7, 2, 1, 6, 8, 5, 3, 4]

let bubbleSortResultsLess: Array<Int> = numberList.bubbleSort(sortDirection: <)
//let bubbleSortResultsMore: Array<Int> = numberList.bubbleSort(sortDirection: >)


