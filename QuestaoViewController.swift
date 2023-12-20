//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Cristhian Ruescas on 18/12/23.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    @IBOutlet var collectionsButtons: [UIButton]!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        print(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
    }
    
    func configLayout(){
        navigationItem.hidesBackButton = true
        for btCollections in collectionsButtons{
            btCollections.layer.cornerRadius = 12.0
        }
    }
}
