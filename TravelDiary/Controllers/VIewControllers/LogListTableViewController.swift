//
//  LogListTableViewController.swift
//  TravelDiary
//
//  Created by Brody Sears on 1/20/22.
//

import UIKit

class LogListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return LogController.SharedInstance.logs.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "logCell", for: indexPath) as? LogTableViewCell else {return UITableViewCell() }
        
        let log = LogController.SharedInstance.logs[indexPath.row]
        cell.updateViews(log: log)
        
        // Configure the cell...
        
        return cell
    }
    
    
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let log = LogController.SharedInstance.logs[indexPath.row]
            LogController.SharedInstance.deleteLog(log: log)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Identify, index, desitinaiton, object to send, object to receive
        if segue.identifier == "toDetailVC" {
            //what segue was triggered
            if let index = tableView.indexPathForSelectedRow {
                // what cell triggered this segue
                if let destination = segue.destination as? LogDetailViewController {
                    // where is it going?
                    let log = LogController.SharedInstance.logs[index.row]
                    destination.log = log
            }
        }
    }
    // whats being sent?
    // what object is receiving
}


}
