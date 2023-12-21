import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var buttonStartedQuiz: UIButton!
    
    @IBAction func clickButton(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
    }
    
    func configLayout(){
        navigationItem.hidesBackButton = true
        buttonStartedQuiz.layer.cornerRadius = 12.0
    }
}

