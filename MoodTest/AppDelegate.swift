//
//  AppDelegate.swift
//  MoodTest
//
//  Created by Alonso on 2017/9/7.
//  Copyright © 2017年 Alonso. All rights reserved.
//

import UIKit
import CoreData


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var persistentContainer: NSPersistentContainer!
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        createMoodyContainer { container in
            self.persistentContainer = container
            let storyboard = self.window?.rootViewController?.storyboard
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "RootViewController") as? RootViewController
                else { fatalError("Cannot instantiate root view controller") }
            vc.managedObjectContext = container.viewContext
            self.window?.rootViewController = vc
        }
        return true
    }
}
