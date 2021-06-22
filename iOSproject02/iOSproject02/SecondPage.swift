//
//  SecondPage.swift
//  iOSproject02
//
//  Created by 지원 on 2021/06/12.
//

import UIKit

class secondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
//    @IBOutlet weak var cancelButtonWidth: NSLayoutConstraint!
//    @IBOutlet weak var submitButtonWidth: NSLayoutConstraint!
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var idLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var checkLabel: UITextField!
    @IBAction func touchUpInsidePickerButton(_ sender: Any) {
        pickImage()
    }
    
    let imagePicker = UIImagePickerController()
    func pickImage() {
        self.present(self.imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func touchUpInsideCancelButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.backgroundColor = UIColor.lightGray
        
        // UIImagePickerController 사용하기
        self.imagePicker.sourceType = .photoLibrary
        self.imagePicker.allowsEditing = true
        self.imagePicker.delegate = self
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var newImage: UIImage? = nil
        if let possible = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            newImage = possible
        } else if let possible = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newImage = possible
        }
        self.imageView.image = newImage
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    
}

