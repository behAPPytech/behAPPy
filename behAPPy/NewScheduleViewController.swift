//
//  NewScheduleViewController.swift
//  behAPPy
//
//  Created by block7 on 3/29/16.
//  Copyright © 2016 block7. All rights reserved.
//

import Foundation
import UIKit

protocol NewScheduleViewControllerDelegate: class {
    func didCancel(controller: NewScheduleViewController)
    func newAssignment(controller: NewScheduleViewController, didFinishAddingAssignment assignment: Assignment)
}

class NewScheduleViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textView: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    weak var delegate: NewScheduleViewControllerDelegate?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        textView.becomeFirstResponder()
    }
    
    @IBAction func cancel() {
        print("cancel pressed")
        delegate?.didCancel(self)
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func done() {
        print("done pressed")
        let assignment = Assignment(title: textView.text!)
        delegate?.newAssignment(self, didFinishAddingAssignment: assignment)
    }
    
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return nil
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let oldText: NSString = textView.text!
        let newText: NSString = oldText.stringByReplacingCharactersInRange(range, withString: string)
        
        if newText.length > 0 {
            doneBarButton.enabled = true
        } else {
            doneBarButton.enabled = false
        }
        
        return true
    }
    
    
    
}