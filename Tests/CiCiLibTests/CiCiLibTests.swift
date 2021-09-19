    import XCTest
    @testable import CiCiLib
    
    final class CiCiLibTests: XCTestCase {
        
        func testHello() {
            let name = "Kevin"
            let hello = Hello(name: name)
            
            XCTAssertEqual(hello.toString(), "Hello, \(name)")
        }
    }
