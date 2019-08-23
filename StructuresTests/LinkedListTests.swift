import XCTest
@testable import Structures

public final class LinkedListTests: XCTestCase
{
    func test_last()
    {
        let list = LinkedList<Int>()
        
        XCTAssertNil(list.last)
    }
}
