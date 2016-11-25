//
//  MenuTableViewController.swift
//  CMP10C
//
//  Created by Adrian Mateoaea on 29.01.2016.
//  Copyright © 2016 CMP10C. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    let items = MenuItems()
    
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor.clear
        self.tableView.tableFooterView = UIView()
        self.tableView.separatorStyle = .none
        self.tableView.layoutMargins = UIEdgeInsets.zero
        self.tableView.separatorInset = UIEdgeInsets.zero
        self.tableView.bounces = false
        
        self.tableView.contentInset = UIEdgeInsets(top: 100, left: 0, bottom: 30, right: 0)
        
        self.tableView.register(MenuTableViewCell.self,
                                forCellReuseIdentifier: "MenuTableViewCell")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.tableView.selectRow(at: IndexPath(row: selectedIndex, section: 0),
                                 animated: false,
                                 scrollPosition: UITableViewScrollPosition.top)
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell",
                                                 for: indexPath) as! MenuTableViewCell
        
        cell.iconView.image = self.items.getIcon((indexPath as NSIndexPath).row)
        cell.titleLabel.text = self.items.getTitle((indexPath as NSIndexPath).row)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let rootVC = MainTableViewController()
        //let rootNC = UINavigationController(rootViewController: rootVC)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let checkInVC = storyboard.instantiateViewController(withIdentifier: "CheckInVC") as! CheckInVC
        let mapVC = storyboard.instantiateViewController(withIdentifier: "ManagerVC") as! ManagerVC
        let taskVC = storyboard.instantiateViewController(withIdentifier: "TasksTableVC") as! TasksTableVC
        let settingVC = storyboard.instantiateViewController(withIdentifier: "SettingVC") as! SettingVC
        
        let taskNC = UINavigationController(rootViewController: taskVC)
        let checkInNC = UINavigationController(rootViewController: checkInVC)
        let mapNC = UINavigationController(rootViewController: mapVC)
        let setNC = UINavigationController(rootViewController: settingVC)

        
        selectedIndex = indexPath.row
        
        switch selectedIndex {
        case 0:
            self.changeViewController(checkInNC)
            break
        case 1:
            self.changeViewController(taskNC)
            break
        case 2:
            self.changeViewController(mapNC)
            break
        case 3:
            self.changeViewController(setNC)
            break
        case 4:
            //self.changeViewController(helpNC)
            break
        case 5:
            let refreshAlert = UIAlertController(title: "Uyarı", message: "Çıkmak istediğinize emin misiniz? ", preferredStyle: UIAlertControllerStyle.alert)
            
            refreshAlert.addAction(UIAlertAction(title: "Evet", style: .default, handler: { (action: UIAlertAction!) in
                exit(0);
            }))
            
            refreshAlert.addAction(UIAlertAction(title: "Hayır", style: .cancel, handler: { (action: UIAlertAction!) in
                //print("Handle Cancel Logic here")
            }))
            
            present(refreshAlert, animated: true, completion: nil)
            break
        default:
            break
            
            
        }
        
        
    }
    
}
