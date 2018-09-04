//
//  AuthSwitcher.swift
//  TimeLine
//
//  Created by UT on 29.08.2018.
//  Copyright © 2018 kostindevelop. All rights reserved.
//

import UIKit

class AuthSwitcher {
    
    static let strLogedIn = "Logged In"
    
    static func choiseRootVC() {
        let loggedIn = UserDefaults.standard.bool(forKey: strLogedIn)
        UserDefaults.standard.set(true, forKey: strLogedIn) // TODO AppStore Delete
        var rootVC: UIViewController
        
        if loggedIn {
            rootVC = R.storyboard.timeLine.timeLineScreen()!
        } else {
            rootVC = R.storyboard.auth.loginScreen()!
        }
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = rootVC
        window.makeKeyAndVisible()
        appDelegate.window = window
    }
}
