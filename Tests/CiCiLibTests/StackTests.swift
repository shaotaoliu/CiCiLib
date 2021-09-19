import XCTest
@testable import CiCiLib

final class StackTests: XCTestCase {

    func test_stack_success() {
        let stack = Stack<String>()
        
        XCTAssertTrue(stack.isEmpty())
        XCTAssertEqual(0, stack.size())
        
        stack.push(element: "Hello")
        stack.push(element: "Thank you")
        stack.push(element: "Good morning")
        
        XCTAssertFalse(stack.isEmpty())
        XCTAssertEqual(3, stack.size())
        XCTAssertEqual("Good morning", try! stack.top())
        
        stack.clear()
        
        XCTAssertTrue(stack.isEmpty())
        XCTAssertEqual(0, stack.size())
    }
    
    func test_stack_push_pop_success() {
        let stack = Stack<String>()
        
        stack.push(element: "Hello")
        stack.push(element: "Thank you")
        stack.push(element: "Good morning")
        
        while !stack.isEmpty() {
            try! stack.pop()
        }
        
        XCTAssertTrue(stack.isEmpty())
    }
    
    func test_stack_top_error() {
        let stack = Stack<String>()
        
        XCTAssertThrowsError(try stack.top(), "Error") { error in
            XCTAssertEqual(error as? StackError, StackError.StackIsEmpty)
        }
    }
    
    func test_stack_pop_error() {
        let stack = Stack<String>()
        
        XCTAssertThrowsError(try stack.pop(), "Error") { error in
            XCTAssertEqual(error as? StackError, StackError.StackIsEmpty)
        }
    }
}
