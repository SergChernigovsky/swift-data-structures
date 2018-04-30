import XCTest
@testable import Structures

public final class StructuresTests: XCTestCase
{
    func test_push_and_peek()
    {
        var stack = Stack<String>()
        
        XCTAssertEqual(stack.count, 0)
        XCTAssertNil(stack.peek())
        
        stack.push("Odin")
        stack.push("Thor")
        stack.push("Loki")
        
        XCTAssertEqual(stack.count, 3)
        XCTAssertEqual(stack.peek(), "Loki")
    }
    
    func test_pop_and_peek()
    {
        var stack = Stack<String>()
        stack.push("Odin")
        stack.push("Thor")
        stack.push("Loki")
        
        XCTAssertEqual(stack.count, 3)
        XCTAssertEqual(stack.pop(), "Loki")
        XCTAssertEqual(stack.count, 2)
        XCTAssertEqual(stack.peek(), "Thor")
    }
}
