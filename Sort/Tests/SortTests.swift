
import Foundation
import XCTest

//protocol Sortable {
//
//    func sort(elements: [Element]) -> [Element]
//}

class SortTests: XCTestCase {

    // Data


    // MARK: - Setup
    override func setUp() {
        super.setUp()
    }

    // MARK: - TearDown
    override func tearDown() {
        super.tearDown()
    }

    // MARK: Tests
    // Empty array
    func testEmptyArray() {
        // given
        let array = []
        // when
        let sortedArray = array.sort
        // than
//        XCTAssertEqual(todo.title, taskTitle)
    }

    // One element in array
    func testOneElementInArray() {
        // given
        let array = [5]
        // when
        let sortedArray = emptyArray.sort
        // than
//        XCTAssertEqual(todo.title, taskTitle)
    }


//    3). Array of two objects [5, 8]
//
//    4). Array of two objects [8, 5]
//
//    5). Array of two objects [5, 5]
//
//    6). [5, 5, 5]
//
//    7). [2, 4, 6]
//
//    8). [2, 6, 4]
//
//    9). [4, 2, 6]
//
//    10). [4, 6, 2]
//
//    11). [6, 2, 4]
//
//    12). [6, 4, 2]
//
//    13). Array has already sorted [1, 2, 3, 4, 5, 6]
//    
//    14). Array sorted in wrong way [6, 5, 4, 3, 2, 1]

}
