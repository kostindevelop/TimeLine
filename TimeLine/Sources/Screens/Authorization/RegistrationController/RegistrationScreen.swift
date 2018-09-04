//
//  RegistrationScreen.swift
//  TimeLine
//
//  Created by UT on 28.08.2018.
//  Copyright © 2018 kostindevelop. All rights reserved.
//

import UIKit

class RegistrationScreen: UIViewController {

    // MARK: - IBOutlet
    
    @IBOutlet weak var lbSignUp: UILabel!
    @IBOutlet weak var lbEmail: UILabel!
    @IBOutlet weak var lbUserName: UILabel!
    @IBOutlet weak var lbPassword: UILabel!
    @IBOutlet weak var lbConfirmPassword: UILabel!
    @IBOutlet weak var btRegistration: UIButton!
    
    
    // MARK: - LifeCikle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localizeUI()
    }
    
    
    // MARK: - IBActuon
    
    @IBAction func tapBtCloseScreen(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapBtRegistration(_ sender: UIButton) {
    }
    
    
    // MARK: - Function
    
    func configuredView() {
        // TO DO
        // configured UI element
    }
    
    func localizeUI() {
        lbSignUp.text = Text.regLbSignUp()
        lbEmail.text = Text.regLbEmail()
        lbUserName.text = Text.regLbUserName()
        lbPassword.text = Text.regLbPassword()
        lbConfirmPassword.text = Text.regLbConfirmPassword()
        btRegistration.setTitle(Text.regBtRegistration(), for: .normal)
    }
}
