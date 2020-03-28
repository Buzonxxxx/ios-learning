import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = sender.currentTitle!
        storyBrain.nextStory(userChoice: choice)
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getQuestion()
        choice1Button.setTitle(storyBrain.getChoice(choice: 1), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice(choice: 2), for: .normal)
    }
    
}
