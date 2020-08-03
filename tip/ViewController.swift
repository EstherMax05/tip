//
//  ViewController.swift
//  tip
//
//  Created by Esther Max-Onakpoya on 7/27/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountField: UITextField!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBOutlet weak var tipPercent: UISegmentedControl!
    //    lazy var tipPercent = Double() ?? 0
    
    let tipArray = [0.15,0.18,0.20]
    
    @IBAction func calculateTip(_ sender: Any) {
        let tip = tipArray[tipPercent.selectedSegmentIndex] * (Double(billAmountField.text!) ?? 0)
        let bill = (Double(billAmountField.text!) ?? 0) + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", bill)
        
    }
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

