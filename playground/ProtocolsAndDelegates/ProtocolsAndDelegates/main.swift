// Protocol
protocol AdvancedLifeSupport {
    func performCPR()
}

// UITextField
class EmergencyCalHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

// ViewController
struct Paramedic: AdvancedLifeSupport {
    init(handler: EmergencyCalHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("The paramedic does chest compressions, 30s per second.")
    }
}

// ViewController
class Doctor: AdvancedLifeSupport {
    init(handler: EmergencyCalHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30s per second.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds.")
    }
}

// ViewController
class Surgeon: Doctor {
    
    override func performCPR() {
        super.performCPR()
        print("Sing staying alive by BeeGees")
    }
    
    func userElectricDrill() {
        print("Whirr...")
    }
}

let emilio = EmergencyCalHandler()
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
