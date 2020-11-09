//
//  categoryVC.swift
//  QuizKids
//
//  Created by Bagus setiawan on 08/11/20.
//

import UIKit

class categoryVC: UIViewController {
    
//    var id : Int?
    var categories : [Category] = []
    
    @IBOutlet weak var categoryQuizTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryQuizTableView.delegate = self
        categoryQuizTableView.dataSource = self
        fetchCategories()
    }
    
    func fetchCategories(){
        categories = DataLoader.getCategories()
    }

}

extension categoryVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCells", for: indexPath) as! categoryCells
        cell.categoryNameLabel.text = categories[indexPath.row].name_category
        return cell
    }
    
    
}
