//
//  AddTaskVC.swift
//  Check-in Me
//
//  Created by Gurkan Yilmaz on 24/11/2016.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import UIKit
import Eureka

class AddTaskVC: FormViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Görevler"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named : "ic_menu"),
                                                                style: UIBarButtonItemStyle.plain,
                                                                target: self,
                                                                action: #selector(self.pop))
        
        
        
        
        form = Section("Kullanıcı Bilgileri")
            <<< TextRow(){ row in
                row.title = "Ad Soyad"
                row.placeholder = ""
            }
            <<< PhoneRow(){
                $0.title = "Telefon"
                $0.placeholder = "Telefon"
            }
            +++ Section("Görev Bilgileri")
            <<< DateRow(){
                $0.title = "Tarih"
                $0.value = NSDate(timeIntervalSinceReferenceDate: 0) as Date
            }
            <<< ButtonRow() {
                $0.title = "Kaydet"
                }
                .onCellSelection { [weak self] (cell, row) in
                    self?.pop()
        }
        
    }

    
    func pop(){
        dismiss(animated: true, completion: nil)
    }
}
