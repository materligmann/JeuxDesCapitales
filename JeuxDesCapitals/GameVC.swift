//
//  GameVC.swift
//  JeuxDesCapitals
//
//  Created by Mathias Erligmann on 09/11/2018.
//  Copyright © 2018 Mathias Erligmann. All rights reserved.
//

import UIKit

class GameVC: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var responseOneButton: UIButton!
    @IBOutlet weak var reponseTwoButton: UIButton!
    @IBOutlet weak var reponseThreeButton: UIButton!
    @IBOutlet weak var reponseFourButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var numberlabel: UILabel!
    
    var currentQuestion : Question?
    let model = Model(playMode: .jeu)
    var threeChoices = [String]()
    var fourChoices = [String]()
    var essai : Int = 0
    var maxScore : Int = 0
    var score : Int = 0
    var didGetTrueResult : Bool = false
    var questionNumber : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberlabel.text = "n°1"
        scoreLabel.text = String(score)
        model.chargeListe()
        currentQuestion = model.getQuestion()
        threeChoices = model.getThreeChoice()
        guard threeChoices.count == 3 else {
            print("3 Chooices eror")
            return
        }
        if currentQuestion != nil {
            if model.mode == .classic {
                questionLabel.text = currentQuestion?.pays
                fourChoices = threeChoices
                fourChoices.append((currentQuestion?.capital)!)
                fourChoices.shuffle()
                insertChoices()
            }
            if model.mode == .reverse {
                questionLabel.text = currentQuestion?.capital
                fourChoices = threeChoices
                fourChoices.append((currentQuestion?.pays)!)
                fourChoices.shuffle()
                insertChoices()
            }
        }
    }
    
    func insertChoices() {
        responseOneButton.setTitle(fourChoices[0], for: .normal)
        reponseTwoButton.setTitle(fourChoices[1], for: .normal)
        reponseThreeButton.setTitle(fourChoices[2], for: .normal)
        reponseFourButton.setTitle(fourChoices[3], for: .normal)
    }
    func buttonPressed(index : Int) {
        if model.mode == .classic {
            switch index {
            case 1:
                if currentQuestion?.capital ==  responseOneButton.titleLabel?.text {
                    responseOneButton.setTitleColor(#colorLiteral(red: 0.1375022531, green: 1, blue: 0.6859362721, alpha: 1), for: .normal)
                    didGetTrueResult = true
                }else {
                    responseOneButton.setTitleColor(#colorLiteral(red: 0.9795237184, green: 0.3032706082, blue: 0.1497418284, alpha: 1), for: .normal)
                    if didGetTrueResult == false {
                       essai += 1
                    }
                }
            case 2:
                if currentQuestion?.capital ==  reponseTwoButton.titleLabel?.text {
                    reponseTwoButton.setTitleColor(#colorLiteral(red: 0.1375022531, green: 1, blue: 0.6859362721, alpha: 1), for: .normal)
                    didGetTrueResult = true
                }else {
                    reponseTwoButton.setTitleColor(#colorLiteral(red: 0.9795237184, green: 0.3032706082, blue: 0.1497418284, alpha: 1), for: .normal)
                    if didGetTrueResult == false {
                        essai += 1
                    }
                }
            case 3:
                if currentQuestion?.capital ==  reponseThreeButton.titleLabel?.text {
                    reponseThreeButton.setTitleColor(#colorLiteral(red: 0.1375022531, green: 1, blue: 0.6859362721, alpha: 1), for: .normal)
                    didGetTrueResult = true
                }else {
                    reponseThreeButton.setTitleColor(#colorLiteral(red: 0.9795237184, green: 0.3032706082, blue: 0.1497418284, alpha: 1), for: .normal)
                    if didGetTrueResult == false {
                        essai += 1
                    }
                }
            case 4:
                if currentQuestion?.capital ==  reponseFourButton.titleLabel?.text {
                    reponseFourButton.setTitleColor(#colorLiteral(red: 0.1375022531, green: 1, blue: 0.6859362721, alpha: 1), for: .normal)
                    didGetTrueResult = true
                }else {
                    reponseFourButton.setTitleColor(#colorLiteral(red: 0.9795237184, green: 0.3032706082, blue: 0.1497418284, alpha: 1), for: .normal)
                    if didGetTrueResult == false {
                        essai += 1
                    }
                }
            default:
                print("default error")
            }
        }
        if model.mode == .reverse {
            switch index {
            case 1:
                if currentQuestion?.pays ==  responseOneButton.titleLabel?.text {
                    responseOneButton.setTitleColor(#colorLiteral(red: 0.1375022531, green: 1, blue: 0.6859362721, alpha: 1), for: .normal)
                    didGetTrueResult = true
                }else {
                    responseOneButton.setTitleColor(#colorLiteral(red: 0.9795237184, green: 0.3032706082, blue: 0.1497418284, alpha: 1), for: .normal)
                    if didGetTrueResult == false {
                        essai += 1
                    }
                }
            case 2:
                if currentQuestion?.pays ==  reponseTwoButton.titleLabel?.text {
                    reponseTwoButton.setTitleColor(#colorLiteral(red: 0.1375022531, green: 1, blue: 0.6859362721, alpha: 1), for: .normal)
                    didGetTrueResult = true
                }else {
                    reponseTwoButton.setTitleColor(#colorLiteral(red: 0.9795237184, green: 0.3032706082, blue: 0.1497418284, alpha: 1), for: .normal)
                    if didGetTrueResult == false {
                        essai += 1
                    }
                }
            case 3:
                if currentQuestion?.pays ==  reponseThreeButton.titleLabel?.text {
                    reponseThreeButton.setTitleColor(#colorLiteral(red: 0.1375022531, green: 1, blue: 0.6859362721, alpha: 1), for: .normal)
                    didGetTrueResult = true
                }else {
                    reponseThreeButton.setTitleColor(#colorLiteral(red: 0.9795237184, green: 0.3032706082, blue: 0.1497418284, alpha: 1), for: .normal)
                    if didGetTrueResult == false {
                        essai += 1
                    }
                }
            case 4:
                if currentQuestion?.pays ==  reponseFourButton.titleLabel?.text {
                    reponseFourButton.setTitleColor(#colorLiteral(red: 0.1375022531, green: 1, blue: 0.6859362721, alpha: 1), for: .normal)
                    didGetTrueResult = true
                }else {
                    reponseFourButton.setTitleColor(#colorLiteral(red: 0.9795237184, green: 0.3032706082, blue: 0.1497418284, alpha: 1), for: .normal)
                    if didGetTrueResult == false {
                        essai += 1
                    }
                }
            default:
                print("default error")
            }
        }

    }
    @IBAction func buttonOnePressed(_ sender: UIButton) {
        buttonPressed(index: 1)
    }
    @IBAction func buttonTwoPressed(_ sender: UIButton) {
        buttonPressed(index: 2)
    }
    @IBAction func buttonThreePressed(_ sender: UIButton) {
        buttonPressed(index: 3)
    }
    @IBAction func buttonFourPressed(_ sender: UIButton) {
        buttonPressed(index: 4)
    }
    func updateScore() {
        if didGetTrueResult {
            score += 3 - essai
        }
        maxScore += 3
        essai = 0
        didGetTrueResult = false
        questionNumber += 1
        scoreLabel.text = "Score : \(score) / \(maxScore)"
        numberlabel.text = "n°\(questionNumber)"
    }
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        for button in buttonCollection {
            button.setTitleColor(#colorLiteral(red: 0.1976232231, green: 0.7491906285, blue: 0.9991944432, alpha: 1), for: .normal)
        }
        updateScore()
        
        let question = model.getQuestion()
        threeChoices = model.getThreeChoice()
        guard threeChoices.count == 3 else {
            print("3 Chooices eror")
            return
        }
        if question != nil {
            currentQuestion = question
            if model.mode == .classic {
                questionLabel.text = currentQuestion?.pays
                fourChoices = threeChoices
                fourChoices.append((currentQuestion?.capital)!)
                fourChoices.shuffle()
                insertChoices()
            }
            if model.mode == .reverse {
                questionLabel.text = currentQuestion?.capital
                fourChoices = threeChoices
                fourChoices.append((currentQuestion?.pays)!)
                fourChoices.shuffle()
                insertChoices()
            }
        }
    }
    @IBAction func modeButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "gameToSettingsVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "gameToSettingsVC") {
            let navVC = segue.destination as! UINavigationController
            let settingsVC = navVC.viewControllers[0] as! SettingsVC
            settingsVC.model = self.model
        }
    }
}
