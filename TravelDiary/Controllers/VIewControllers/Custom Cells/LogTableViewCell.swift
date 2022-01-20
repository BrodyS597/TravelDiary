//
//  LogTableViewCell.swift
//  TravelDiary
//
//  Created by Brody Sears on 1/20/22.
//

import UIKit

class LogTableViewCell: UITableViewCell {

    @IBOutlet weak var logNameLabel: UILabel!
    @IBOutlet weak var logAddressLabel: UILabel!
    @IBOutlet weak var logDateLabel: UILabel!
    
    func updateViews(log: Log){
        logNameLabel.text = log.title
        logAddressLabel.text = log.address
        logDateLabel.text = log.date.stringValue()
    }
    
}// end of class
