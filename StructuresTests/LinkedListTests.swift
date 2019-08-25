import XCTest
@testable import Structures

public final class LinkedListTests: XCTestCase
{
    func test_count_and_last_and_is_empty()
    {
        let list = LinkedList<Int>()
        
        XCTAssertNil(list.last)
        XCTAssertEqual(list.isEmpty, true)
        XCTAssertEqual(list.count, 0)
        
        list.append(1)
        list.append(2)
        list.append(3)
        
        XCTAssertEqual(list.last!, 3)
        XCTAssertEqual(list.isEmpty, false)
        XCTAssertEqual(list.count, 3)
    }
    
    func test_unit_at_index()
    {
        let list = LinkedList<String>()
        
        XCTAssertNil(list[0])
        XCTAssertNil(list[1])
        XCTAssertNil(list[2])
        
        list.append("Odin")
        list.append("Thor")
        list.append("Loki")
        
        XCTAssertEqual(list[0], "Odin")
        XCTAssertEqual(list[1], "Thor")
        XCTAssertEqual(list[2], "Loki")
    }
}
