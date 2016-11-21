//
//  TasksTableVC.swift
//  Check-in Me
//
//  Created by Yonca Coskun on 21.11.2016.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import UIKit

class TasksTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    @IBOutlet weak var tableView: UITableView!
    
    let textCellIdentifier = "LabelCell"
    
    let fruits = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
                       "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
                       "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
                       "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
                       "Pear", "Pineapple", "Raspberry", "Strawberry"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath as IndexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = fruits[row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
        let row = indexPath.row
        print(fruits[row])
    }

}
