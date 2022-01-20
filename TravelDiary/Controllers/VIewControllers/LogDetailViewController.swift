//
//  LogDetailViewController.swift
//  TravelDiary
//
//  Created by Brody Sears on 1/20/22.
//

import UIKit

class LogDetailViewController: UIViewController {

    // MARK: - Outlets
   
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var dateTextField: UILabel!
    @IBOutlet weak var descriptionTextField: UITextView!
    
    //receiver
    var log: Log? 
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        guard let log = log else {return}
        titleTextField.text = log.title
        addressTextField.text = log.address
        descriptionTextField.text = log.description
        dateTextField.text = log.date.stringValue()
    }

    @IBAction func saveButtonPressed(_ sender: Any) {
        guard let title = titleTextField.text, let address = addressTextField.text, let description = descriptionTextField.text else {return}
        
        
        if let log = log {
            //has a value - update
            LogController.SharedInstance.updateLog(log: log, title: title, address: address, description: description)
        } else {
            //no value - create
            LogController.SharedInstance.createLog(title: title, address: address, description: description)
            
        }
        navigationController?.popViewController(animated: true)
        //should save data - create
        
        // should update if existing
        
    }
    
}// end
