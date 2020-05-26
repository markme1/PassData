//
//  ProfileViewController.swift
//  PassData
//
//  Created by mark me on 5/26/20.
//  Copyright © 2020 mark me. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet var picture: UIImageView!
    @IBOutlet var text1: UITextField!
    @IBOutlet var text2: UITextField!
    @IBOutlet var text3: UITextField!
    @IBOutlet var saveButtonDesine: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ProfileViewController.tapped(gestureRecognizer:)))
        picture.addGestureRecognizer(tap)
        picture.isUserInteractionEnabled = true
        
        
    }
    @objc func tapped(gestureRecognizer: UITapGestureRecognizer) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        self.picture.image = image
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButton(_ sender: Any)
    {
        
        
    }
    
    
}
