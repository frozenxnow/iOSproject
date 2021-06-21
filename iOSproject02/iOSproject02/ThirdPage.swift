//
//  ThirdPage.swift
//  iOSproject02
//
//  Created by 지원 on 2021/06/15.
//

import UIKit

class thirdViewController: UIViewController {
    
    @IBOutlet weak var btn1Width: NSLayoutConstraint!
    @IBOutlet weak var btn2Width: NSLayoutConstraint!
    @IBOutlet weak var btn3Width: NSLayoutConstraint!
    
    
    @IBAction func touchUpInsideCancelButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func touchUpInsidePrevButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        
        btn1Width.constant = self.view.frame.size.width / 3
        btn2Width.constant = btn1Width.constant
        btn3Width.constant = btn1Width.constant

        super.viewDidLoad()
        
    }
}


