//
//  RegisterSafeSpaceViewController.swift
//  finaleapp
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

class RegisterSafeSpaceViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var locationField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitNameButton(_ sender: UIButton) {
        
        var nameText = nameField.text
        nameLabel.text = nameField.text
    }
    
    
    @IBAction func submitLocationButton(_ sender: UIButton) {
        var locationText = locationField.text
            locationLabel.text = locationField.text
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
