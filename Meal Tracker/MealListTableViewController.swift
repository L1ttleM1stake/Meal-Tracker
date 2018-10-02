//
//  MealListTableViewController.swift
//  Meal Tracker
//
//  Created by student on 02.10.2018.
//  Copyright © 2018 ithug. All rights reserved.
//

import UIKit

class MealListTableViewController: UITableViewController {
    
    var meals: [Meal] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        loadMeals()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func saveMeals(){
        
    }
    
    func loadMeals(){
        meals += [
            Meal (
                name: "Гамбургер",
                photo: UIImage(named: "BigKing")!,
                notes: "Самый дешевый",
                rating: 1,
                timestamp: Date()
            ),
            Meal(
                name: "Чизбургер",
                photo: UIImage(named: "СЫРНЫЙ-ЖО_сайт")!,
                notes: "С сыром",
                rating: 2,
                timestamp: Date()
            ),
            
            Meal(
                name: "Двойной чизбургер",
                photo: UIImage(named: "CheeseBurger")!,
                notes: "С сыром",
                rating: 2,
                timestamp: Date()
            ),
            
            Meal(
                name: "Беконайзер",
                photo: UIImage(named: "Bekonizer")!,
                notes: "С беконом",
                rating: 3,
                timestamp: Date()
            ),
            
            Meal(
                name: "Стейкхауз",
                photo: UIImage(named: "Steakhouse")!,
                notes: "С беконом",
                rating: 3,
                timestamp: Date()
            )
        ]
        
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let meal = meals[indexPath.row]
        cell.textLabel?.text = meal.name
        cell.imageView?.image = meal.photo
        return cell
    }
    
}
