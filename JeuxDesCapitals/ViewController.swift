//
//  ViewController.swift
//  JeuxDesCapitals
//
//  Created by Mathias Erligmann on 24/09/2018.
//  Copyright © 2018 Mathias Erligmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var currentQuestion : Question?
    let model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.chargeListe()
        currentQuestion = model.getQuestion()
        if currentQuestion != nil {
            answerLabel.text = ""
            if model.mode == .classic {
                questionLabel.text = currentQuestion?.pays
            }
            if model.mode == .reverse {
                questionLabel.text = currentQuestion?.capital
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toSettingsVC") {
            let navVC = segue.destination as! UINavigationController
            let settingsVC = navVC.viewControllers[0] as! SettingsVC
            settingsVC.model = self.model
        }
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if currentQuestion != nil {
            if questionLabel.text == currentQuestion?.pays {
                answerLabel.text = currentQuestion?.capital
            }
            if questionLabel.text == currentQuestion?.capital {
                answerLabel.text = currentQuestion?.pays
            }
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        let question = model.getQuestion()
        if question != nil {
            currentQuestion = question
            answerLabel.text = ""
            if model.mode == .classic {
                questionLabel.text = currentQuestion?.pays
            }
            if model.mode == .reverse {
                questionLabel.text = currentQuestion?.capital
            }
        }
    }
}

