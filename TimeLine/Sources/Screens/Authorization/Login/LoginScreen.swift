//
//  LoginScreen.swift
//  TimeLine
//
//  Created by UT on 27.08.2018.
//  Copyright © 2018 kostindevelop. All rights reserved.
//

import UIKit

class LoginScreen: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var lbSignIn: UILabel!
    @IBOutlet weak var lbUserName: UILabel!
    @IBOutlet weak var lbPassword: UILabel!
    @IBOutlet weak var btForgotPassword: UIButton!
    @IBOutlet weak var btLogin: UIButton!
    @IBOutlet weak var btRegistration: UIButton!
    
    // MARK: - LifeCikle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localizeUI()
    }
    
    // MARK: - Function
    
    func localizeUI() {
        lbSignIn.text = Text.authLbSignIn()
        lbUserName.text = Text.authLbUserName()
        lbPassword.text = Text.authPassword()
        btForgotPassword.setTitle(Text.authBtForgotPassword(), for: .normal)
        btLogin.setTitle(Text.authBtLogin(), for: .normal)
        btRegistration.setTitle(Text.authBtRegistration(), for: .normal)
    }
    
    
    
}
