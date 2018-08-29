//
//  AuthSwitcher.swift
//  TimeLine
//
//  Created by UT on 29.08.2018.
//  Copyright © 2018 kostindevelop. All rights reserved.
//

import UIKit

class AuthSwitcher {
    
    static func choiseRootVC() {
        let loggedIn = UserDefaults.standard.bool(forKey: "Logged In")
        UserDefaults.standard.set(false, forKey: "Logged In") // APPSTORE Delete
        var rootVC: UIViewController
        
        if loggedIn {
            rootVC = UIStoryboard.init(name: "Root", bundle: nil).instantiateViewController(withIdentifier: "startViewController")
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
