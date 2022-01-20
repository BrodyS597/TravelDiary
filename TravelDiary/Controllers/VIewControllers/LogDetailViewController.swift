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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    

    @IBAction func saveButtonPressed(_ sender: Any) {
    }
    
}// end
