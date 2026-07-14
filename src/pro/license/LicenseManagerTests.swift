import XCTest

final class LicenseManagerTests: XCTestCase {
    func testLocalBuildIsAlwaysUnlocked() {
        let manager = LicenseManager.shared
        manager.initialize()
        XCTAssertEqual(manager.state, .pro)
        XCTAssertTrue(manager.isProAvailable)
        XCTAssertFalse(manager.isProLocked)
        XCTAssertTrue(manager.isLifetimeVariant)
    }

    func testLocalActivationDoesNotRequireAKey() {
        let expectation = expectation(description: "local activation")
        LicenseManager.shared.activate("") { result in
            if case .failure(let error) = result { XCTFail("Unexpected local activation error: \(error)") }
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
        XCTAssertEqual(LicenseManager.shared.state, .pro)
    }
}
