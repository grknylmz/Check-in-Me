//
//  MenuItem.swift
//  
//
//  Created by Gurkan Yilmaz on 18.11.2016.
//  Copyright © 2016. All rights reserved.
//

import UIKit

struct MenuItems {
    
    fileprivate let titles = ["Harita", "Görevler", "Takım", "Ayarlar", "Yardım" , "Çıkış" ]
    fileprivate let icons  = [ Image.homeImage, Image.notifImage, Image.reviewsImage, Image.settingsImage, Image.helpImage , Image.exitImage  ]
    
    var count: Int {
        return self.titles.count
    }
    
    func getTitle(_ index: Int) -> String {
        return self.titles[index]
    }
    
    func getIcon(_ index: Int) -> UIImage {
        return self.icons[index]
    }
    
}
