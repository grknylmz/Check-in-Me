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
    
    var tasks = [ Task(taskName: "Test1" , taskTime: "22111016") , Task(taskName: "Test2" , taskTime: "22111016"),Task(taskName: "Test3" , taskTime: "22111016") ]
    
     var doneTasks = [ Task(taskName: "Test1Done" , taskTime: "22111016") , Task(taskName: "Test2Done" , taskTime: "22111016"),Task(taskName: "Test3Done" , taskTime: "22111016") ]

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
   
    @IBAction func segmentedControlAction(_ sender: Any) {
        tableView.reloadData()
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.isEditing = true
        
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
            cell.imageView?.image = UIImage(named: tasks[row].getTaskName())
            return cell
        }
        else
        {
            cell.textLabel?.text = doneTasks[row].getTaskName()
            cell.imageView?.image = UIImage(named: tasks[row].getTaskName())
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
    
    
    // MARK: - Sorting
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .none
    }
    
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }

    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedObject = self.tasks[sourceIndexPath.row]
        tasks.remove(at: sourceIndexPath.row)
        tasks.insert(movedObject, at: destinationIndexPath.row)
        NSLog("%@", "\(sourceIndexPath.row) => \(destinationIndexPath.row) \(tasks)")
        // To check for correctness enable: self.tableView.reloadData()
    }

}
