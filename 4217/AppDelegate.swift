//
//  AppDelegate.swift
//  4217
//
//  Created by Ha Lam on 2/4/17.
//  Copyright © 2017 MarInc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let monaController = MonaCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let navigationController = UINavigationController(rootViewController: monaController)
        window?.rootViewController = navigationController
        
        UINavigationBar.appearance().isTranslucent = false// keep this prevent true origin color if not it will brighter
        UINavigationBar.appearance().barTintColor = UIColor(hexString:"#386C79")!
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        return true
    }
}

