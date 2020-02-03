import Foundation
import XCTest

class BDDTest: TAUUITestBase {
    
 func testThankYouMessageInBDStyle() {
        givenAppIsReady()
        whenIEnter(city: "Taiwan")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}
