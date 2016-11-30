//
//  SettingVC.swift
//  Check-in Me
//
//  Created by Yonca Coskun on 25.11.2016.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import UIKit
import Foundation

class SettingVC: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    let sectionTitles : [String] = ["Genel", "Hakkında", "Sosyal Medya"]
    let rowImages: [UIImage] = [#imageLiteral(resourceName: "general"), #imageLiteral(resourceName: "about"), #imageLiteral(resourceName: "facebook")]
    let s1Data: [String] = ["Hesap", "Duvar Kağıdı","Ses"]
    let s2Data: [String] = ["Hakkında"]
    let s3Data: [String] = ["Arkadaşlarını Bul", "Arkadaşlarını Bul", "Arkadaşlarını Bul"]

    
    var sectionData: [Int: [String]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    
        
        sectionData = [0: s1Data, 1: s2Data, 2: s3Data]
       
        
        self.title = "Ayarlar"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named : "ic_menu"),
                                                                style: UIBarButtonItemStyle.plain,
                                                                target: self,
                                                                action: #selector(self.menu))

    }
    func menu() {
        self.openSideMenu()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (sectionData[section]?.count)!
    }
  /*  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }*/
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        
        let image = UIImageView(image: rowImages[section])
        image.frame = CGRect(x: 5, y: 5, width: 35, height: 35)
        view.addSubview(image)
        
        let label = UILabel()
        label.text = sectionTitles[section]
        label.frame = CGRect(x: 45, y: 5, width: 100, height: 35)
        view.addSubview(label)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "headerCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "headerCell")
        }
        cell?.textLabel?.text = sectionData[indexPath.section]![indexPath.row]
        
        return cell!
    }
   
}
