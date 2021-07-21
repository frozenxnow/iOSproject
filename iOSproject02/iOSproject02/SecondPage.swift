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
    @IBOutlet weak var textView: UITextView!
    
    let imagePicker = UIImagePickerController()
    
    func pickImage() {
        self.present(self.imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func touchUpInsideCancelButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func touchUpInsideNextButton(_ sender: UIButton) {
        performSegue(withIdentifier: "secondToThirdSegue", sender: self)
    }
    
    
    
    // 바로 저장하지 않고 회원가입을 완료했을 때 데이터를 저장하도록 다음 페이지로 데이터 전달 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? thirdViewController {
            vc.id = idLabel.text
            vc.password = passwordLabel.text
            vc.info = textView.text
        }
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
    // image, id, password, check, 자기소개 모두 입력되었을 때 다음(nextButton) 버튼 활성화
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let _ = imageView.image else {
            nextButton.isEnabled = false
            return
        }
        guard let id = idLabel.text, let password = passwordLabel.text, let check = checkLabel.text, let info = textView.text else {
            nextButton.isEnabled = false
            return }
        
        if id.count == 0 || password.count == 0 || info.count == 0 {
            nextButton.isEnabled = false
        }
        
        if password == check {
            nextButton.isEnabled = true
        } else {
            nextButton.isEnabled = false
        }
    }
    
}

