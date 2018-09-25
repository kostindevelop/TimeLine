//
//  LoginScreen.swift
//  TimeLine
//
//  Created by UT on 27.08.2018.
//  Copyright © 2018 kostindevelop. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class LoginScreen: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var btSignUp: UIButton!
    @IBOutlet weak var btSignIn: UIButton!
    @IBOutlet weak var lbEmail: UILabel!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var lbPassword: UILabel!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btForgotPassword: UIButton!
    @IBOutlet weak var btLogin: UIButton!
    @IBOutlet weak var btLoginWithFacebook: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var btSignInTap = true
    
    let tfieldConfirmPass = SkyFloatingLabelTextField(frame: CGRect(x: 50, y: 430, width: 275, height: 45))
    
    // MARK: - LifeCikle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localizeUI()
        configuredView()
        configuredRegistrationButton()
        
        tfieldConfirmPass.placeholder = "confirm password"
        tfieldConfirmPass.title = "Confirm password"
        tfieldConfirmPass.selectedTitleColor = .white
        tfieldConfirmPass.textColor = .white
        tfieldConfirmPass.lineColor = .white
        tfieldConfirmPass.titleColor = .white
        tfieldConfirmPass.isSecureTextEntry = true
        view.addSubview(tfieldConfirmPass)
    }
    
    
     // MARK: - IBActuon
    
    @IBAction func tapBtForgotPassword(_ sender: UIButton) {
    }
    
    @IBAction func tapBtLogin(_ sender: UIButton) {
    }
    
    @IBAction func tapBtSignIn(_ sender: UIButton) {
////        let storyboard = R.storyboard.auth()
//        let registrationVC = R.storyboard.auth.registrationScreen()
//        present(registrationVC!, animated: true, completion: nil)
        self.btSignInTap = true
        configuredRegistrationButton()
    }
    
    @IBAction func tapBtSignUp(_ sender: UIButton) {
        self.btSignInTap = false
        configuredRegistrationButton()
        
    }
    
    
    // MARK: - Function
    
    func configuredView() {
        // TO DO Configured UI elements
        let tfieldEmail = SkyFloatingLabelTextField(frame: CGRect(x: 50, y: 270, width: 275, height: 45))
        tfieldEmail.placeholder = "e-mail"
        tfieldEmail.title = "E-mail"
        tfieldEmail.selectedTitleColor = .white
        tfieldEmail.textColor = .white
        tfieldEmail.lineColor = .white
        tfieldEmail.titleColor = .white
        view.addSubview(tfieldEmail)
        
        let tfieldPassword = SkyFloatingLabelTextField(frame: CGRect(x: 50, y: 350, width: 275, height: 45))
        tfieldPassword.placeholder = "password"
        tfieldPassword.title = "Password"
        tfieldPassword.selectedTitleColor = .white
        tfieldPassword.textColor = .white
        tfieldPassword.lineColor = .white
        tfieldPassword.titleColor = .white
        tfieldPassword.isSecureTextEntry = true
        view.addSubview(tfieldPassword)
        
        self.btSignIn.titleLabel?.textColor = .red
    }
    
    func localizeUI() {
//        lbSignIn.text = Text.authLbSignIn()
//        lbUserName.text = Text.authLbUserName()
//        lbPassword.text = Text.authPassword()
//        btForgotPassword.setTitle(Text.authBtForgotPassword(), for: .normal)
//        btLogin.setTitle(Text.authBtLogin(), for: .normal)
//        tapBtRegistration.setTitle(Text.authBtRegistration(), for: .normal)
    }
    
    func configuredRegistrationButton() {
        if btSignInTap {
            self.btSignUp.titleLabel?.textColor = .gray
            self.btLogin.titleLabel?.text = "Sign In"
            self.tfieldConfirmPass.isHidden = true
        } else {
            self.btSignIn.titleLabel?.textColor = .gray
            self.btSignUp.titleLabel?.textColor = .white
            self.btLogin.titleLabel?.text = "Sign Up"
            self.tfieldConfirmPass.isHidden = false
        }
    }
}
