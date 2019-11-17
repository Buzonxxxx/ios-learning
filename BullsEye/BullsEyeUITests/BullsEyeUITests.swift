import XCTest

class BullsEyeUITests: XCTestCase {
  var app: XCUIApplication!
  
  override func setUp() {
    continueAfterFailure = false
    
    app = XCUIApplication()
    app.launch()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testGameStyleSwitch() {
    
    // given
    let slideButton = app.segmentedControls.buttons["Slide"]
    let typeButton = app.segmentedControls.buttons["Type"]
    let slideLabel = app.staticTexts["Get as close as you can to: "]
    let typeLabel = app.staticTexts["Guess where the slider is: "]
    
    // then
    XCTContext.runActivity(named: "Then I verify result") { _ in
      if slideButton.isSelected {
        XCTAssertTrue(slideLabel.exists)
        XCTAssertFalse(typeLabel.exists)
        
        typeButton.tap()
        XCTAssertTrue(typeLabel.exists)
        XCTAssertFalse(slideLabel.exists)
      } else if typeButton.isSelected {
        XCTAssertTrue(typeLabel.exists)
        XCTAssertFalse(slideLabel.exists)
        
        slideButton.tap()
        XCTAssertTrue(slideLabel.exists)
        XCTAssertFalse(typeLabel.exists)
      }
    }
    
    // capture screenshot
    XCTContext.runActivity(named: "Gather screenshots") { activity in
      let mainScreen = XCUIScreen.main
      let fullScreenshot = mainScreen.screenshot()
      let fullScreenshotAttachment = XCTAttachment(screenshot: fullScreenshot)
      fullScreenshotAttachment.lifetime = .keepAlways
      activity.add(fullScreenshotAttachment)
    }
  }
}
