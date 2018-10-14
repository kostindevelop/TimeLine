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
    @IBOutlet weak var countCharName: UILabel!
    @IBOutlet weak var countCharDescription: UILabel!
    @IBOutlet weak var noteDescription: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        noteDescription.delegate = self
        noteDescription.placeholder = "Task Description"
        showCountChar()
    }
    
    
    //MARK:- TextView Delegate
    
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        let currentText = textView.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        let changedText = currentText.replacingCharacters(in: stringRange, with: text)
        return changedText.count <= 35 // Pass your character count here
    }
    
//    private func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
//        print("chars \(textView.text.count) \(text)")
//
//        if(textView.text.count > 20 && range.length == 0) {
//            print("Please summarize in 20 characters or less")
//            return false;
//        }
//        return true;
//    }
    
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



