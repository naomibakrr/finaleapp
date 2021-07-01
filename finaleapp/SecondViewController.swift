//
//  SecondViewController.swift
//  finaleapp
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var blogLabel: UILabel!
    
    @IBOutlet weak var replyText: UITextField!
    var finalPost = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blogLabel.text = finalPost

        // Do any additional setup after loading the view.
    }
    
    @IBAction func replyButton(_ sender: UIButton) {
        replyText.isHidden = false
        
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
