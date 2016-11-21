//
//  TaskVC.swift
//  Check-in Me
//
//  Created by Gurkan Yilmaz on 18/11/2016.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import UIKit

class TaskVC: UIViewController {
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Görevler"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named : "ic_menu"),
                                                                style: UIBarButtonItemStyle.plain,
                                                                target: self,
                                                                action: #selector(self.menu))

  
        self.segmentedControl.layer.cornerRadius = 0
        self.segmentedControl.layer.borderWidth = 1.0
        self.segmentedControl.layer.borderColor = UIColor(red:0, green:0.479, blue:0.999, alpha:1).cgColor
        self.segmentedControl.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func menu() {
        self.openSideMenu()
    }
}
