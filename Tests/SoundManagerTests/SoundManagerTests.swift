import XCTest
@testable import SoundManager

final class SoundManagerTests: XCTestCase {
    func testSoundManager() throws {
        let manager:SoundManager? = SoundManager()
        XCTAssert(manager != nil)
    }
}
