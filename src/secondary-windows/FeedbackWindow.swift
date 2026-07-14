import Cocoa

final class FeedbackWindow: NSWindow {
    static var shared: FeedbackWindow?
    static var canBecomeKey_ = true
    override var canBecomeKey: Bool { Self.canBecomeKey_ }
}
