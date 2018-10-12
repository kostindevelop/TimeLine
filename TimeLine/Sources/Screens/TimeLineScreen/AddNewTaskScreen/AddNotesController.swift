//
//  AddNewTaskScreen.swift
//  TimeLine
//
//  Created by Nugumanov Dmitry on 10/9/18.
//  Copyright © 2018 kostindevelop. All rights reserved.
//

import UIKit

class AddNotesController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var noteName: UITextField!
    @IBOutlet var countCharName: UILabel!
    @IBOutlet var countCharDescription: UILabel!
    @IBOutlet weak var noteDescription: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteDescription.delegate = self
        noteDescription.placeholder = "Task Description"
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        showCountChar()
    }
    
    // Limiting the Number of Characters in a UITextView
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        //120 chars restriction
        return noteDescription.text.count + (text.count - range.length) <= 120
    }
    
    func showCountChar() {
        countCharDescription.text = "\(String(describing: noteDescription.text!.count) + "/\(120)")"
        countCharName.text = "\(String(describing: noteName.text!.count) + "/\(50)")"
        
        if (noteName.text!.count) < 30 && (noteDescription.text!.count) < 30 {
            countCharDescription.isHidden = true
            countCharName.isHidden = true
        } else {
            countCharDescription.isHidden = false
            countCharName.isHidden = false
        }
    }
}


