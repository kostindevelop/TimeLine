//
//  AddNewTaskScreen.swift
//  TimeLine
//
//  Created by Nugumanov Dmitry on 10/9/18.
//  Copyright © 2018 kostindevelop. All rights reserved.
//

import UIKit

class AddNewTaskScreen: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var taskNameLabel: UITextField!
    @IBOutlet weak var countCharLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskNameLabel.delegate = self
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        showCount()
    }
    
    
    func showCount() {
        countCharLabel.text = "\(String(describing: taskNameLabel.text!.count) + "/50")"
        
        if (self.taskNameLabel.text?.count)! < 30 {
            self.countCharLabel.isHidden = true
        } else {
            self.countCharLabel.isHidden = false
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (taskNameLabel.text?.count)! >= 50 {
            return false
        }
        return true
    }
}
