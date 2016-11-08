//
//  AppDelegate.swift
//  Check-in Me
//
//  Created by Gurkan Yilmaz on 04/11/16.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        FIRApp.configure()
        return true
    }



}

