//
//  ViewController.swift
//  Postcard
//
//  Created by Armin Mandel on 30.09.14.
//  Copyright (c) 2014 workm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
  
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // testing comita
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        
        // challenge1 part
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        
        enterNameTextField.resignFirstResponder()
        // end c1
        
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
        }
    
}

