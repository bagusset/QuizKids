//
//  Category.swift
//  QuizKids
//
//  Created by Bagus setiawan on 09/11/20.
//

import Foundation

struct Category: Codable {
    let id: Int
    let name_category: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name_category = "name_category"
    }
}
