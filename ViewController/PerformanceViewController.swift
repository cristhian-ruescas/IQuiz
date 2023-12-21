import UIKit

class PerformanceViewController: UIViewController {

    var score: Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var percentageResult: UILabel!
    
    @IBOutlet weak var buttonRestartQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
        configPerformance()
    }
    
    func configLayout(){
        navigationItem.hidesBackButton = true
        buttonRestartQuiz.layer.cornerRadius = 12.0
    }
    
    func configPerformance(){
        guard let performance = score else{return}
        resultLabel.text = "Você acertou \(performance) de \(questions.count) questões"
        let percentage = (performance * 100) / questions.count
        percentageResult.text = "Percentual total: \(percentage)%"
    }
}
