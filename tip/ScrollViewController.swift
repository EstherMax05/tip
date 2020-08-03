//
//  ScrollViewController.swift
//  tip
//
//  Created by Esther Max-Onakpoya on 7/27/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    enum Theme: String {
        case spring,fall,winter,plain
    }
    @IBAction func payNowTouched(_ sender: UIButton) {
    }
    
    @IBOutlet weak var payNowButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    //
    @IBOutlet weak var billAmountField: UITextField!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBOutlet weak var tipPercent: UISegmentedControl!
    //    lazy var tipPercent = Double() ?? 0
    
    let tipArray = [0.15,0.18,0.20]
    
    let tipArrayInt = [15,18,20]
    
    var roundMode : Bool?
    
    @IBOutlet weak var splitSlider: UISlider!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let splitValue = Int(splitSlider.value)
        splitLabel.text = String(format: "%i", splitValue)
        let tip = (tipArray[tipPercent.selectedSegmentIndex] * (Double(billAmountField.text!) ?? 0))
        let bill = ((Double(billAmountField.text!) ?? 0) + tip)/Double(splitValue)

        tipLabel.text = String(format: "$%.2f", (tip))
        totalAmountLabel.text = String(format: "$%.2f", bill)
        
        if roundMode != nil {
            if (roundMode == true) {
                totalAmountLabel.text = String(format: "$%.2f", bill.rounded())
            }
        }
        
    }
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var seperatorBar: UIView!
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView(theme: Theme.plain)

        // Do any additional setup after loading the view.
    }
    
    
    private func updateView(theme: Theme) {
        switch theme {
        case .spring:
            view.backgroundColor = #colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)
            seperatorBar.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            tipPercent.backgroundColor = #colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)
            tipPercent.selectedSegmentTintColor = #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)
            payNowButton.layer.cornerRadius = 5
            payNowButton.layer.borderWidth = 1
            payNowButton.layer.borderColor = #colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)
            payNowButton.layer.backgroundColor = #colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)
            payNowButton.setTitle("Pay Now", for: .normal)
            payNowButton.setTitleColor(#colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1), for: .normal)
            scrollView.contentSize = CGSize(width: view.frame.width, height: payNowButton.frame.maxY)
        case .fall:
            view.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
            seperatorBar.backgroundColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
            tipPercent.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            tipPercent.selectedSegmentTintColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
            payNowButton.layer.cornerRadius = 5
            payNowButton.layer.borderWidth = 1
            payNowButton.layer.borderColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            payNowButton.layer.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            payNowButton.setTitle("Pay Now", for: .normal)
            payNowButton.setTitleColor(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), for: .normal)
            scrollView.contentSize = CGSize(width: view.frame.width, height: payNowButton.frame.maxY)
        case .winter:
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            seperatorBar.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//            tipPercent.backgroundColor =
            splitSlider.minimumTrackTintColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            splitSlider.tintColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            tipPercent.selectedSegmentTintColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            payNowButton.layer.cornerRadius = 5
            payNowButton.layer.borderWidth = 1
            payNowButton.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            payNowButton.layer.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            payNowButton.setTitle("Pay Now", for: .normal)
            payNowButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            scrollView.contentSize = CGSize(width: view.frame.width, height: payNowButton.frame.maxY)
        default:
            //plain
            payNowButton.layer.cornerRadius = 5
            payNowButton.layer.borderWidth = 1
            payNowButton.layer.borderColor = #colorLiteral(red: 0.9215686275, green: 0.9215686275, blue: 0.9215686275, alpha: 1)
            payNowButton.layer.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.9215686275, blue: 0.9215686275, alpha: 1)
            payNowButton.setTitle("Pay Now", for: .normal)
            scrollView.contentSize = CGSize(width: view.frame.width, height: payNowButton.frame.maxY)
        }
        
    }
    
    

    @IBAction func settingsButtonClicked(_ sender: UIBarButtonItem) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
