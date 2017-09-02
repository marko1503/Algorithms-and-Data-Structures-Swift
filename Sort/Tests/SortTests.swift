
import Foundation
import XCTest


class SortTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }

    func testTodo() {
        let taskTitle = "finish laundry"
        let todo = TodoItem(title: taskTitle)
        XCTAssertEqual(todo.title, taskTitle)
    }
}
