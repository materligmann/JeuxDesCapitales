//
//  SettingsVC.swift
//  JeuxDesCapitals
//
//  Created by Mathias Erligmann on 24/09/2018.
//  Copyright © 2018 Mathias Erligmann. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var model : Model!
    let modes = ["Classique", "Inversé"]
    let continents = ["Tous", "Europe", "Asie / Océanie", "Afrique", "Amérique"]
    
    var selectedMode : UITableViewCell?
    var selectedLocalization : UITableViewCell?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0  {
            return 2
        }else {
            return 5
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func setAccesoryMode(cell : UITableViewCell, mode : Mode) {
        switch mode {
        case .classic:
            if cell.textLabel?.text == "Classique" {
                cell.accessoryType = .checkmark
                selectedMode = cell
            }
        case .reverse:
            if cell.textLabel?.text == "Inversé" {
                cell.accessoryType = .checkmark
                selectedMode = cell
            }
        }
    }
    func setAccesoryLocation(cell : UITableViewCell, localization : Localization) {
        switch localization {
        case .all:
            if cell.textLabel?.text == "Tous" {
                cell.accessoryType = .checkmark
                selectedLocalization = cell
            }
        case .europe :
            if cell.textLabel?.text == "Europe" {
                cell.accessoryType = .checkmark
                selectedLocalization = cell
            }
        case .afrique:
            if cell.textLabel?.text == "Afrique" {
                cell.accessoryType = .checkmark
                selectedLocalization = cell
            }
        case .asieOcéanie :
            if cell.textLabel?.text == "Asie / Océanie" {
                cell.accessoryType = .checkmark
                selectedLocalization = cell
            }
        case .amériqueNordEtSud:
            if cell.textLabel?.text == "Amérique" {
                cell.accessoryType = .checkmark
                selectedLocalization = cell
            }
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let rect = CGRect(x: 0, y: 0, width: tableView.frame.width, height: 20)
        let label = UILabel(frame: rect)
        label.textAlignment = .center
        label.backgroundColor = #colorLiteral(red: 0.2004162669, green: 0.7477956414, blue: 1, alpha: 1)
        label.textColor = UIColor.white
        if section == 0 {
            label.text = "Mode"
        } else {
            label.text = "Continent"
        }
        return label
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        if indexPath.section == 0 {
            if cell.accessoryType != .checkmark {
                selectedMode?.accessoryType = .none
                cell.accessoryType = .checkmark
                selectedMode = cell
            }
        }
        if indexPath.section == 1 {
            if cell.accessoryType != .checkmark {
                selectedLocalization?.accessoryType = .none
                cell.accessoryType = .checkmark
                selectedLocalization = cell
            }
        }
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath)
        cell.selectionStyle = .none
        if indexPath.section == 0 {
            let mode = modes[indexPath.row]
            cell.textLabel?.text = mode
            setAccesoryMode(cell: cell, mode: model.mode)
        }
        if indexPath.section == 1 {
            let continent = continents[indexPath.row]
            cell.textLabel?.text = continent
            setAccesoryLocation(cell: cell, localization: model.localization)
        }
        return cell
        
    }
    
    @IBAction func dismissButtonPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true) {
            self.changeModeParams()
        }
    }
    
    func changeModeParams() {
        switch selectedLocalization?.textLabel?.text {
        case "Tous":
            model.localization = .all
        case "Europe":
            model.localization = .europe
        case "Asie / Océanie":
            model.localization = .asieOcéanie
        case "Afrique":
            model.localization = .afrique
        case "Amérique":
            model.localization = .amériqueNordEtSud
        default:
            break
        }
        
        switch selectedMode?.textLabel?.text {
        case "Classique":
            model.mode = .classic
        case "Inversé":
            model.mode = .reverse
        default:
            break
        }
    }
}
