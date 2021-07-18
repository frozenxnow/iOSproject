//
//  SecondPage.swift
//  iOSproject02
//
//  Created by 지원 on 2021/06/12.
//

import UIKit

class secondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var idLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var checkLabel: UITextField!
    @IBAction func touchUpInsidePickerButton(_ sender: Any) {
        pickImage()
    }
    @IBOutlet weak var nextButton: UIButton!
    
    let imagePicker = UIImagePickerController()
    func pickImage() {
        self.present(self.imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func touchUpInsideCancelButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func touchUpInsideNextButton(_ sender: UIButton) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.backgroundColor = UIColor.lightGray
        
        // UIImagePickerController 사용하기
        self.imagePicker.sourceType = .photoLibrary
        self.imagePicker.allowsEditing = true
        self.imagePicker.delegate = self
        self.checkLabel.delegate = self
        self.passwordLabel.delegate = self
        
        // 다음 버튼 비활성화
        nextButton.isEnabled = false
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

extension secondViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        let id = idLabel.text
        let password = passwordLabel.text
        let check = checkLabel.text
        
        if id != nil && password != nil {
            if password == check {
                nextButton.isEnabled = true
            }
        }
    }
    
}

