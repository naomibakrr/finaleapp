//
//  ViewController.swift
//  finaleapp
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blogText: UITextField!
    
    var postText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func postBlogButton(_ sender: Any) {
        //originallyUIButton
        
        self.postText =  blogText.text!
        performSegue(withIdentifier: "name", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! SecondViewController
        vc.finalPost = self.postText
    }
}

