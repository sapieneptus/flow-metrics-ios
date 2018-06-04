
import XCTest
import AppCenterCrashes
import AppCenterXCUITestExtensions

class VSTS_Flow_MetricsUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        ACTLaunch.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        let tabBarsQuery = XCUIApplication().tabBars
        ACTLabel.labelStep("Given the app has launched")

        tabBarsQuery.buttons["Second"].tap()
        ACTLabel.labelStep("And I tap the second button")

        tabBarsQuery.buttons["First"].tap()
        ACTLabel.labelStep("Then I tap the first button")
    }

    func testCrashOnPurpose() {
        ACTLabel.labelStep("I will crash on purpose")
        MSCrashes.generateTestCrash()
    }
}
