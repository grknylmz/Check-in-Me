//
//  SettingVC.swift
//  Check-in Me
//
//  Created by Yonca Coskun on 25.11.2016.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import UIKit
import Foundation

class SettingVC: UITableViewController {
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Ayarlar"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named : "ic_menu"),
                                                                style: UIBarButtonItemStyle.plain,
                                                                target: self,
                                                                action: #selector(self.menu))
       // personName.text = self.person?.getUserName()
       // self.view.addSubview(personName)
      
    }
    func menu() {
        self.openSideMenu()
    }
   

    
}
