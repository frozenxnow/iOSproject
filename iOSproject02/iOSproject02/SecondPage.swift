//
//  SecondPage.swift
//  iOSproject02
//
//  Created by 지원 on 2021/06/12.
//

import UIKit

class secondViewController: UIViewController {
    
//    @IBOutlet weak var cancelButtonWidth: NSLayoutConstraint!
//    @IBOutlet weak var submitButtonWidth: NSLayoutConstraint!
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var idLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var chekLabel: UITextField!
    
    
    
    @IBAction func touchUpInsideCancelButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
