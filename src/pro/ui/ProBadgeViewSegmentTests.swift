import XCTest
import Cocoa

final class ProBadgeViewSegmentTests: XCTestCase {
    func testLocalBuildHidesProBadge() {
        let badge = ProBadgeView()
        XCTAssertFalse(ProBadgeView.showsBadges)
        XCTAssertTrue(badge.isHidden)
    }

    func testLocalBadgeOccupiesNoSpace() {
        let badge = ProBadgeView()
        XCTAssertEqual(badge.fittingSize.width, 0)
        XCTAssertEqual(badge.fittingSize.height, 0)
    }

    func testSegmentFunctionalityRemainsAvailableWithoutBadge() {
        let control = NSSegmentedControl(labels: ["Small", "Medium", "Auto"], trackingMode: .selectOne, target: nil, action: nil)
        for index in 0..<control.segmentCount { control.setWidth(80, forSegment: index) }
        let overlay = ProBadgeView.attach(to: control, segmentIndex: 2, label: "Auto", symbol: .stub)
        XCTAssertTrue(overlay.badge.isHidden)
        XCTAssertEqual(overlay.label.stringValue, "Auto")
        XCTAssertEqual(control.width(forSegment: 2), 80)
    }
}
