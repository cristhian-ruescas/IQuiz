//
//  ViewController.swift
//  iQuiz
//
//  Created by Cristhian Ruescas on 18/12/23.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var buttonStartedQuiz: UIButton!
    
    @IBAction func clickButton(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }
    
    func configuraLayout(){
        buttonStartedQuiz.layer.cornerRadius = 12.0
    }
}

