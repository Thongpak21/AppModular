import XCTest
@testable import Onepiece

final class OnepieceTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Onepiece().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
