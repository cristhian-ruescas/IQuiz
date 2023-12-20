//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Cristhian Ruescas on 18/12/23.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0
    
    @IBOutlet weak var titleQuestion: UILabel!
    
    @IBOutlet var collectionsButtons: [UIButton]!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        if(sender.tag == questoes[numeroQuestao].respostaCorreta){
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
            pontuacao += 1
            print("Certo! sua pontuação atual é de: \(pontuacao)")
        } else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
            pontuacao -= 1
            print("Errado! sua pontuação atual é de: \(pontuacao)")
        }
        
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configQuestion), userInfo: nil, repeats: false)
        }
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
        titleQuestion.text = questoes[numeroQuestao].titulo
        for buttonResponse in collectionsButtons{
            let titleButton = questoes[numeroQuestao].respostas[buttonResponse.tag]
            buttonResponse.setTitle(titleButton, for: .normal)
            buttonResponse.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
}
