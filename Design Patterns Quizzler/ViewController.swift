//
//  ViewController.swift
//  Quizzler
//
//  Created by Sévio 13/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
    ["Pergunta1", "True"],
    ["Pergunta2", "True"],
    ["Pergunta3", "False"]
    ]
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    
    @IBAction func awnserButtonPressed(_ sender: UIButton) {
        
        let userAwnser = sender.currentTitle // True, False
        let actualAnswer = quiz[questionNumber][1]
        
        if userAwnser == actualAnswer {
            print("Right.")
        } else {
            print("Wrong.")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    

}

