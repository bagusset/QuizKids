//
//  Question.swift
//  QuizKids
//
//  Created by Bagus setiawan on 09/11/20.
//

import Foundation

struct Question: Codable {
    let id, id_topic: Int
    let question, optionA, optionB, optionC, optionD, answer: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case id_topic =  "id_topic"
        case question = "question"
        case optionA = "option_a"
        case optionB = "option_b"
        case optionC = "option_c"
        case optionD = "option_d"
        case answer = "answer"
    }    
}
