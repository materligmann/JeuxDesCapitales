//
//  Model.swift
//  JeuxDesCapitals
//
//  Created by Mathias Erligmann on 24/09/2018.
//  Copyright © 2018 Mathias Erligmann. All rights reserved.
//

import Foundation

class Model {
    
    var questions = [Question]()
    var liste = [Question]()
    var localization : Localization = .all
    {
        didSet {
            chargeListe()
        }
    }
    var mode : Mode = .classic
    
    
    func chargeListe() {
        liste = []
        switch localization {
        case .all:
            liste = questions
        case .europe :
            for question in questions{
                if question.continent == .europe {
                    liste.append(question)
                }
            }
        case .afrique :
            for question in questions{
                if question.continent == .afrique {
                    liste.append(question)
                }
            }
        case .amériqueNordEtSud :
            for question in questions{
                if question.continent == .amériqueNordEtSud {
                    liste.append(question)
                }
            }
        case .asieOcéanie :
            for question in questions{
                if question.continent == .asieOcéanie {
                    liste.append(question)
                }
            }
        }
    }
    
    func getQuestion() -> Question? {
        if let question = liste.randomElement() {
            return question
        }else {
            return nil
        }
    }
    
    private func addQuestion(question : Question) {
        questions.append(question)
    }
    
    init() {
        let model = self
        model.addQuestion(question: Question(capital: "Kaboul", pays: "Afghanistan", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Pretoria" , pays: "Afrique du Sud", continent: .afrique))
        model.addQuestion(question: Question(capital: "Tirana", pays: "Albanie", continent: .europe))
        model.addQuestion(question: Question(capital: "Alger", pays: "Algérie", continent : .afrique))
        model.addQuestion(question: Question(capital: "Berlin", pays: "Allemagne", continent: .europe))
        model.addQuestion(question: Question(capital: "Andorre-la-Vieille", pays: "Andorre", continent: .europe))
        model.addQuestion(question: Question(capital: "Saint John's", pays: "Antigua-et-Barbade", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Riyad", pays: "Arabie Saoudite", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Buenos Aires", pays: "Argentine", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Erevan", pays: "Arménie", continent: .europe))
        model.addQuestion(question: Question(capital: "Canberra", pays: "Autralie", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Vienne", pays: "Autriche", continent: .europe))
        model.addQuestion(question: Question(capital: "Bakou", pays: "Azerbaïdjan", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Nassau", pays: "Bahamas", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Manama", pays: "Bahreïn", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Dacca", pays: "Bangladesh", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Bridgetown", pays: "Barbade", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Bruxelles", pays: "Belgique", continent: .europe))
        model.addQuestion(question: Question(capital: "Belmopan", pays: "Belize", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Porto-Novo", pays: "Bénin", continent: .afrique))
        model.addQuestion(question: Question(capital: "Thimbu", pays: "Bhoutan", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Minsk", pays: "Biélorussie", continent: .europe))
        model.addQuestion(question: Question(capital: "Naypyidaw", pays: "Birmanie", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Sucre", pays: "Bolivie", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Sarajevo", pays: "Bosnie Herzégovine", continent: .europe))
        model.addQuestion(question: Question(capital: "Gaborone", pays: "Botswana", continent: .afrique))
        model.addQuestion(question: Question(capital: "Brazilia", pays: "Brésil", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Bandar Seri Begawan", pays: "Brunei", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Sofia", pays: "Bulgarie", continent: .europe))
        model.addQuestion(question: Question(capital: "Ouagadougou", pays: "Burkina Faso", continent: .afrique))
        model.addQuestion(question: Question(capital: "Bujumbura", pays: "Burundi", continent: .afrique))
        model.addQuestion(question: Question(capital: "Phnon Penh", pays: "Cambodge", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Yaoundé", pays: "Cameroun", continent: .afrique))
        model.addQuestion(question: Question(capital: "Ottawa", pays: "Canada", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Praia", pays: "Cap-Vert", continent: .afrique))
        model.addQuestion(question: Question(capital: "Santiago", pays: "Chili", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Pékin", pays: "Chine", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Nicosie", pays: "Chypre", continent: .europe))
        model.addQuestion(question: Question(capital: "Bogota", pays: "Colombie", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Moroni", pays: "Comores", continent: .afrique))
        model.addQuestion(question: Question(capital: "Brazzaville", pays: "Congo", continent: .afrique))
        model.addQuestion(question: Question(capital: "Pyongyang", pays: "Corée du Nord", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Séoul", pays: "Corée du Sud", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "San José", pays: "Costa Rica", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Yamoussoukro", pays: "Cote d'Ivoire", continent: .afrique))
        model.addQuestion(question: Question(capital: "Zagreb", pays: "Croatie", continent: .europe))
        model.addQuestion(question: Question(capital: "La Havane", pays: "Cuba", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Luanda", pays: "Angola", continent: .afrique))
        model.addQuestion(question: Question(capital: "Copenhague", pays: "Danemark", continent: .europe))
        model.addQuestion(question: Question(capital: "Djibouti", pays: "Djibouti", continent: .afrique))
        model.addQuestion(question: Question(capital: "Roseau", pays: "Dominique", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Le Caire", pays: "Egypte", continent: .afrique))
        model.addQuestion(question: Question(capital: "Abu Dhabi", pays: "Emirats Arabes Unis", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Quito", pays: "Equateur", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Asmara", pays: "Erythrée", continent: .afrique))
        model.addQuestion(question: Question(capital: "Madrid", pays: "Espagne", continent: .europe))
        model.addQuestion(question: Question(capital: "Tallinn", pays: "Estonie", continent: .europe))
        model.addQuestion(question: Question(capital: "Washington", pays: "Etats-Unis", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Addis-Abeba", pays: "Ethiopie", continent: .afrique))
        model.addQuestion(question: Question(capital: "Suva", pays: "Fidji", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Helsinki", pays: "Finlande", continent: .europe))
        model.addQuestion(question: Question(capital: "Paris", pays: "France", continent: .europe))
        model.addQuestion(question: Question(capital: "Libreville", pays: "Gabon", continent: .afrique))
        model.addQuestion(question: Question(capital: "Banjul", pays: "Gambie", continent: .afrique))
        model.addQuestion(question: Question(capital: "Tbilissi", pays: "Géorgie", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Accra", pays: "Ghana", continent: .afrique))
        model.addQuestion(question: Question(capital: "Athènes", pays: "Grèce", continent: .europe))
        model.addQuestion(question: Question(capital: "Saint George's", pays: "Grenade", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Guatemala", pays: "Guatemala", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Conakry", pays: "Guinée", continent: .afrique))
        model.addQuestion(question: Question(capital: "Malabo", pays: "Guinée équatoriale", continent: .afrique))
        model.addQuestion(question: Question(capital: "Bissau", pays: "Guinée-Bissau", continent: .afrique))
        model.addQuestion(question: Question(capital: "Georgetown", pays: "Guyana", continent: .afrique))
        model.addQuestion(question: Question(capital: "Port-au-Prince", pays: "Haïti", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Tegucialpa", pays: "Honduras", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Budapest", pays: "Hongrie", continent: .europe))
        model.addQuestion(question: Question(capital: "Port Louis", pays: "Île Maurice", continent: .afrique))
        model.addQuestion(question: Question(capital: "New Delhi", pays: "Inde", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Jakarta", pays: "Indonésie", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Bagdad", pays: "Irak", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Téhéran", pays: "Iran", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Dublin", pays: "Irlande", continent: .europe))
        model.addQuestion(question: Question(capital: "Reykjavik", pays: "Islande", continent: .europe))
        model.addQuestion(question: Question(capital: "Jérusalem", pays: "Israël", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Rome", pays: "Italie", continent: .europe))
        model.addQuestion(question: Question(capital: "Kingston", pays: "Jamaïque", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Tokyo", pays: "Japon", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Amman", pays: "Jordanie", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Astana", pays: "Kazakhstan", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Nairobi", pays: "Kenya", continent: .afrique))
        model.addQuestion(question: Question(capital: "Bichkek", pays: "Kirghistan", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Tarawa", pays: "Kiribati", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Pristina", pays: "Kosovo", continent: .europe))
        model.addQuestion(question: Question(capital: "Koweït", pays: "Koweït", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Vientiane", pays: "Laos", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Maseru", pays: "Lesotho", continent: .afrique))
        model.addQuestion(question: Question(capital: "Riga", pays: "Lettonie", continent: .europe))
        model.addQuestion(question: Question(capital: "Beyrouth", pays: "Liban", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Monrovia", pays: "Liberia", continent: .afrique))
        model.addQuestion(question: Question(capital: "Tripoli", pays: "Libye", continent: .afrique))
        model.addQuestion(question: Question(capital: "Vaduz", pays: "Lichtenstein", continent: .europe))
        model.addQuestion(question: Question(capital: "Luxembourg", pays: "Luxembourg", continent: .europe))
        model.addQuestion(question: Question(capital: "Skopje", pays: "Macédoine", continent: .europe))
        model.addQuestion(question: Question(capital: "Vilnius", pays: "Lituanie", continent: .europe))
        model.addQuestion(question: Question(capital: "Antananarivo", pays: "Madagascar", continent: .afrique))
        model.addQuestion(question: Question(capital: "Kuala Lumpur", pays: "Malaisie", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Lilongwe", pays: "Malawi", continent: .afrique))
        model.addQuestion(question: Question(capital: "Malé", pays: "Maldives", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Bamako", pays: "Mali", continent: .afrique))
        model.addQuestion(question: Question(capital: "La Valette", pays: "Malte", continent: .europe))
        model.addQuestion(question: Question(capital: "Rabat", pays: "Maroc", continent: .afrique))
        model.addQuestion(question: Question(capital: "Majuro", pays: "Marshal", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Nouakchott", pays: "Mauritanie", continent: .afrique))
        model.addQuestion(question: Question(capital: "Mexico", pays: "Mexique", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Palikir", pays: "Micronésie", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Chisinau", pays: "Moldavie", continent: .europe))
        model.addQuestion(question: Question(capital: "Monaco", pays: "Monaco", continent: .europe))
        model.addQuestion(question: Question(capital: "Oulan-Bator", pays: "Mongolie", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Podogorica", pays: "Monténégro", continent: .europe))
        model.addQuestion(question: Question(capital: "Maputo", pays: "Mozambique", continent: .afrique))
        model.addQuestion(question: Question(capital: "Windhoek", pays: "Namibie", continent: .afrique))
        model.addQuestion(question: Question(capital: "Yaren", pays: "Nauru", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Katmandou", pays: "Népal", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Managua", pays: "Nicaragua", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Niamey", pays: "Niger", continent: .afrique))
        model.addQuestion(question: Question(capital: "Abuja", pays: "Nigeria", continent: .afrique))
        model.addQuestion(question: Question(capital: "Oslo", pays: "Norvège", continent: .europe))
        model.addQuestion(question: Question(capital: "Wellington", pays: "Nouvelle-Zélande", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Mascate", pays: "Oman", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Kampala", pays: "Ouganda", continent: .afrique))
        model.addQuestion(question: Question(capital: "Tachkent", pays: "Ouzbékistan", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Islamabad", pays: "Pakistan", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Melekeok", pays: "Palaos", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Jérusalem-Est", pays: "Palestine", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Panama", pays: "Panama", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Port Moresby", pays: "Papouasie-Nouvelle-Guinée", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Asunción", pays: "Paraguay", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Amsterdam", pays: "Pays-Bas", continent: .europe))
        model.addQuestion(question: Question(capital: "Lima", pays: "Pérou", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Manille", pays: "Philippines", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Varsovie", pays: "Pologne", continent: .europe))
        model.addQuestion(question: Question(capital: "Lisbonne", pays: "Portugal", continent: .europe))
        model.addQuestion(question: Question(capital: "Doha", pays: "Qatar", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Bangui", pays: "République Centrafricaine", continent: .afrique))
        model.addQuestion(question: Question(capital: "Kinshasa", pays: "République Démocratique du Congo", continent: .afrique))
        model.addQuestion(question: Question(capital: "Saint-Domingue", pays: "République Dominicaine", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Prague", pays: "République Tchèque", continent: .europe))
        model.addQuestion(question: Question(capital: "Bucarest", pays: "Roumanie", continent: .europe))
        model.addQuestion(question: Question(capital: "Londres", pays: "Royaume-Uni", continent: .europe))
        model.addQuestion(question: Question(capital: "Moscou", pays: "Russie", continent: .europe))
        model.addQuestion(question: Question(capital: "Kigali", pays: "Rwanda", continent: .afrique))
        model.addQuestion(question: Question(capital: "Basseterre", pays: "Saint-Kitts-et-Nevis", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Saint-Marin", pays: "Saint-Marin", continent: .europe))
        model.addQuestion(question: Question(capital: "Kingstown", pays: "Saint-Vincent-et-les-Grenadines", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Castries", pays: "Sainte-Lucie", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Honiara", pays: "Salomon", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "San Salvador", pays: "Salvador", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Apia", pays: "Samoa", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "São Tomé", pays: "São Tomé et Príncipe", continent: .afrique))
        model.addQuestion(question: Question(capital: "Dakar", pays: "Sénégal", continent: .afrique))
        model.addQuestion(question: Question(capital: "Belgrade", pays: "Serbie", continent: .europe))
        model.addQuestion(question: Question(capital: "Victoria", pays: "Seychelles", continent: .afrique))
        model.addQuestion(question: Question(capital: "Freetown", pays: "Sierra Leone", continent: .afrique))
        model.addQuestion(question: Question(capital: "Singapour", pays: "Singapour", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Bratislava", pays: "Slovaquie", continent: .europe))
        model.addQuestion(question: Question(capital: "Ljubljana", pays: "Slovénie", continent: .europe))
        model.addQuestion(question: Question(capital: "Mogasdiscio", pays: "Somalie", continent: .afrique))
        model.addQuestion(question: Question(capital: "Khartoum", pays: "Soudan", continent: .afrique))
        model.addQuestion(question: Question(capital: "Djouba", pays: "Soudan du Sub", continent: .afrique))
        model.addQuestion(question: Question(capital: "Sri Jayawardenapura", pays: "Sri Lanka", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Stockholm", pays: "Suède", continent: .europe))
        model.addQuestion(question: Question(capital: "Berne", pays: "Suisse", continent: .europe))
        model.addQuestion(question: Question(capital: "Paramaribo", pays: "Suriname", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Mbabane", pays: "Swaziland", continent: .afrique))
        model.addQuestion(question: Question(capital: "Damas", pays: "Syrie", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Douchanbe", pays: "Tadjikistan", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Taipei", pays: "Taïwan", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Dodoma", pays: "Tanzanie", continent: .afrique))
        model.addQuestion(question: Question(capital: "N'Djamena", pays: "Tchad", continent: .afrique))
        model.addQuestion(question: Question(capital: "Bangkok", pays: "Thaïlande", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Dili", pays: "Timor-Oriental", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Lomé", pays: "Togo", continent: .afrique))
        model.addQuestion(question: Question(capital: "Nukualofa", pays: "Tonga", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Port of Spain", pays: "Trinité-et-Tobago", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Tunis", pays: "Tunisie", continent: .afrique))
        model.addQuestion(question: Question(capital: "Achgabat", pays: "Turkménistan", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Ankara", pays: "Turquie", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Fanafuti", pays: "Tuvalu", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Kiev", pays: "Ukraine", continent: .europe))
        model.addQuestion(question: Question(capital: "Montevideo", pays: "Uruguay", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Port-Vila", pays: "Vanuatu", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Vatican", pays: "Vatican", continent: .europe))
        model.addQuestion(question: Question(capital: "Caracas", pays: "Venezuela", continent: .amériqueNordEtSud))
        model.addQuestion(question: Question(capital: "Hanoi", pays: "Viêt Nam", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Sannaa", pays: "Yémen", continent: .asieOcéanie))
        model.addQuestion(question: Question(capital: "Lusaka", pays: "Zambie", continent: .afrique))
        model.addQuestion(question: Question(capital: "Harare", pays: "Zimbabwe", continent: .afrique))
    }
}
