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
                $0.title = "Görev"
                $0.value = NSDate(timeIntervalSinceReferenceDate: 0) as Date
                
        }
    }
    
    func pop(){
        dismiss(animated: true, completion: nil)
    }
}
