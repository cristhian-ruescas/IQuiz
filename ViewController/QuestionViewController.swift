import UIKit

class QuestionViewController: UIViewController {
    
    var score = 0
    var numberQuestion = 0
    
    @IBOutlet weak var titleQuestion: UILabel!
    
    @IBOutlet var collectionsButtons: [UIButton]!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        if(sender.tag == questions[numberQuestion].rightAnswer){
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
            score += 1
        } else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if numberQuestion < questions.count - 1 {
            numberQuestion += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configQuestion), userInfo: nil, repeats: false)
        } else{
            navigateToPerformanceScreen()
        }
    }
    
    func navigateToPerformanceScreen(){
        performSegue(withIdentifier: "goToPerformanceScreen", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
        configQuestion()
    }
    
    func configLayout(){
        navigationItem.hidesBackButton = true
        titleQuestion.numberOfLines = 0
        titleQuestion.textAlignment = .center
        for btCollections in collectionsButtons{
            btCollections.layer.cornerRadius = 12.0
        }
    }
    @objc func configQuestion(){
        titleQuestion.text = questions[numberQuestion].title
        for buttonResponse in collectionsButtons{
            let titleButton = questions[numberQuestion].answers[buttonResponse.tag]
            buttonResponse.setTitle(titleButton, for: .normal)
            buttonResponse.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let performanceVC = segue.destination as? PerformanceViewController else {return}
        performanceVC.score = score
    }
}
