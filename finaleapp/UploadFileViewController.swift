//
//  UploadFileViewController.swift
//  finaleapp
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class UploadFileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
var imagePicker = UIImagePickerController()
    
  
    @IBOutlet weak var uploadHere: UIImageView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            imagePicker.delegate = self
            // Do any additional setup after loading the view.
        }
       
    @IBAction func upload(_ sender: UIButton) { imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { uploadHere.image = selectedImage}
            imagePicker.dismiss(animated: true, completion: nil)
        }
        }

    /*/Users/ scholar/Documents/SafeSpace2/finaleapp/MapLocation1ViewController.swift
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


