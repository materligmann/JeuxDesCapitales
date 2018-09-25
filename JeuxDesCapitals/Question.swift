//
//  Question.swift
//  JeuxDesCapitals
//
//  Created by Mathias Erligmann on 24/09/2018.
//  Copyright © 2018 Mathias Erligmann. All rights reserved.
//

import Foundation

struct Question {
    let capital : String
    let pays : String
    let continent : Continent
    
    init(capital : String, pays : String, continent : Continent ) {
        self.capital = capital
        self.pays = pays
        self.continent = continent
    }
}
