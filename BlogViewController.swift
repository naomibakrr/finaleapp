//
//  BlogViewController.swift
//  finaleapp
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

class BlogViewController: UIViewController {

    @IBOutlet weak var blogField: UITextField!
    
    
    @IBOutlet weak var publishedBlog: UILabel!
    
    
    @IBAction func addBlog(_ sender: UIButton) {
        
        
     // publishedBlog.text = blogField.text
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
