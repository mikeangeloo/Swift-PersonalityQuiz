//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Miguel Angel Ramirez Lopez on 01/07/25.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case lion = "🦁", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definiton: String {
        switch self {
        case .lion:
            return "You are incrededibly outgoing. You surrond yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-temperated, you enjoy doing things on your own terms."
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}
