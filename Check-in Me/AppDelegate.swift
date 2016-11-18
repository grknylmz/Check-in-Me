//
//  AppDelegate.swift
//  Check-in Me
//
//  Created by Gurkan Yilmaz on 04/11/16.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import UIKit
import Firebase
import WKAwesomeMenu

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        FIRApp.configure()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rootVC = storyboard.instantiateViewController(withIdentifier: "CheckInVC") as! CheckInVC
        let menuVC = storyboard.instantiateViewController(withIdentifier: "MenuTableViewController") as! MenuTableViewController
        let rootNC = UINavigationController(rootViewController: rootVC)

    
        
        let options = WKAwesomeMenuOptions.defaultOptions()
        let awesomeMenu = WKAwesomeMenu(rootViewController: rootNC , menuViewController: menuVC, options: options)

        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = awesomeMenu
        self.window?.makeKeyAndVisible()

        return true
    }



}

