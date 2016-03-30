//
//  EntryDetailViewController.swift
//  CoreDataJournalApp
//
//  Created by Jay Maloney on 3/30/16.
//  Copyright © 2016 Jay Maloney. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    var entry:Entry?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(sender: AnyObject) {
        if let entry = self.entry {
            entry.title = titleText.text
            entry.text = textView.text
            entry.timeStamp = NSDate()
        } else {
            let newEntry = Entry(title: self.titleText.text!, text: self.textView.text, timeStamp: NSDate())
            EntryController.sharedInstance.addEntry(newEntry)
            self.entry = newEntry
        }
        
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func clear(sender: AnyObject) {
        self.titleText.text = ""
        self.textView.text = ""
    }
    
    func updateEntry(entry:Entry) {
        self.entry = entry
        
        self.titleText.text = entry.title
        self.textView.text = entry.text
    }
    
    
    //MARK: Resign First Responder
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
