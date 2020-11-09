//
//  DataLoader.swift
//  QuizKids
//
//  Created by Bagus setiawan on 09/11/20.
//

import Foundation

class DataLoader {
    private static let fileExtension = "json"
    
    private static let categoryFileName = "category"
    private static let questionFileName = "question"
    
    static func getCategories() -> [Category] {
        var categories = [Category]()
        if let path = Bundle.main.url(forResource: categoryFileName, withExtension: fileExtension){
            do{
                let data = try Data(contentsOf: path)
                let decoder = JSONDecoder()
                categories = try decoder.decode([Category].self, from: data)
            } catch{
                print(error)
            }
        }
        return categories
    }
    
    static func getQuestion(questionID: Int) -> [Question]{
        var questions = [Question]()
        
        if let path = Bundle.main.url(forResource: questionFileName, withExtension: fileExtension) {
            do{
                let data = try Data(contentsOf: path)
                let decoder = JSONDecoder()
                questions = try decoder.decode([Question].self, from: data)
            } catch {
                print(error)
            }
        }
        return questions
    }
}
