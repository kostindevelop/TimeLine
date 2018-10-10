//
//  AddNewTaskScreen.swift
//  TimeLine
//
//  Created by Nugumanov Dmitry on 10/9/18.
//  Copyright © 2018 kostindevelop. All rights reserved.
//

import UIKit

class AddNewTaskScreen: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var taskName: UITextField!
    @IBOutlet var countCharName: UILabel!
    @IBOutlet var countCharDescription: UILabel!
    @IBOutlet weak var taskDescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskName.delegate = self
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        showCountFor(textField: taskName, label: countCharName, length: 50)
        showCountFor(textField: taskDescription, label: countCharDescription, length: 120)
    }
    
    func showCountFor(textField: UITextField, label: UILabel, length: Int) {
        label.text = "\(String(describing: textField.text!.count) + "/\(length)")"
        textField.text?.lineRange(for: 2)
        if (textField.text?.count)! < 30{
            label.isHidden = true
        } else {
            label.isHidden = false
        }
    }
}

