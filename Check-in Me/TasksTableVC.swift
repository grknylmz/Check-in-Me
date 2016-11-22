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
    let textCellIdentifier = "LabelCell"
    
    var tasks = [ Task(taskName: "TEST1" , taskTime: "22111016") , Task(taskName: "TEST2" , taskTime: "22111016"),Task(taskName: "TEST3" , taskTime: "22111016") ]
    
     var doneTasks = [ Task(taskName: "TEST1Done" , taskTime: "22111016") , Task(taskName: "TEST2Done" , taskTime: "22111016"),Task(taskName: "TEST3Done" , taskTime: "22111016") ]

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
   
    @IBAction func segmentedControlAction(_ sender: Any) {
        tableView.reloadData()
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    
    
    
    
    
    // MARK: Table Protocols
    
    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(segmentedControl.selectedSegmentIndex == 0)
        {
            
            return tasks.count
        }
        else
        {
           return doneTasks.count
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath as IndexPath)
        
        let row = indexPath.row
        
        if(segmentedControl.selectedSegmentIndex == 0)
        {
            
            cell.textLabel?.text = tasks[row].getTaskName()
            return cell
        }
        else
        {
            cell.textLabel?.text = doneTasks[row].getTaskName()
            return cell
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
        let row = indexPath.row
        
        if(segmentedControl.selectedSegmentIndex == 0)
        {
            
           print(tasks[row].getTaskName())
        }
        else
        {
            print(doneTasks[row].getTaskName())
        }
        
    }
    
    


}
