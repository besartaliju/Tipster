//
//  ViewController.swift
//  Tipster
//
//  Created by Besart Aliju on 12/30/15.
//  Copyright © 2015 Besart Aliju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        billField.becomeFirstResponder() // comment out if anything
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.15, 0.18, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        
        let tip = billAmount * tipPercentage
        let total = (billAmount + tip)
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
    

}

