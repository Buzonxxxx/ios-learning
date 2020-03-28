import XCTest
import Foundation

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
    
    func XCTAsyncAssert(_ element: XCUIElement) {
        let isElementExist = element.waitForExistence(timeout: 10)
        if isElementExist{
            XCTAssertTrue(element.exists)
        }
    }
}
