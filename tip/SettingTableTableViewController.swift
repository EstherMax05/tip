//
//  SettingTableTableViewController.swift
//  tip
//
//  Created by Esther Max-Onakpoya on 8/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit
//struct SettingsData {
//    var defaultTip = 0
//    var defaultSplitters = 1
//    var roundMode = false
//    var theme = ScrollViewController.Theme.plain
//}

struct SettingsDataTip {
    var defaultTipLabel = "Set Default Tip"
    var defaultTipValue = 15
}

struct SettingsData {
    var defaultTipLabel = "Set Default Splitters"
    var defaultTipValue = 1
    init(title: String, value: Int) {
        defaultTipLabel = title
        defaultTipValue = value
    }
}

class SettingTableTableViewController: UITableViewController {
    
    private var titles = ["Set Default Tip ($)", "Set Default Tip (%)", "Set Default Splitters", "Round Mode", "Set Theme"];
    
    //TODO:- Change to picker with 3 options
    private var settingsData = [SettingsData(title: "Set Default Tip (%)", value: ScrollViewController().tipArrayInt[0]), SettingsData(title: "Set Default Splitters", value: 1), SettingsData(title: "Round Mode", value: 1)];
    
    @IBOutlet var gestureRecognizer: UITapGestureRecognizer!
    
    @IBAction func wasTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        gestureRecognizer.cancelsTouchesInView = false;
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 2){
            let cell = tableView.dequeueReusableCell(withIdentifier: "radiocell", for: indexPath) as! RadioTableViewCell
            //         Configure the cell...
            cell.title.text = settingsData[indexPath.row].defaultTipLabel
            cell.value.isOn = true
            if (settingsData[indexPath.row].defaultTipValue == 0){
                cell.value.isOn = false
            }
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tipCell", for: indexPath) as! SettingsTableViewCell
//         Configure the cell...
        cell.title.text = settingsData[indexPath.row].defaultTipLabel
        cell.value.text = String(format: "%d", settingsData[indexPath.row].defaultTipValue)
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}
