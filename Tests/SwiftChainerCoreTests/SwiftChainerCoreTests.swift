import XCTest
@testable import SwiftChainerCore

extension NSAttributedString: ChainerCompatible { }

final class SwiftChainerTests: XCTestCase {

    func testExample() throws {
        let text = NSAttributedString()
        XCTAssertEqual(String("\(type(of: text.sc))"), "Chainer<NSAttributedString>")
    }
}
