//
//  SecondPage.swift
//  iOSproject02
//
//  Created by 지원 on 2021/06/12.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var cancelButtonWidth: NSLayoutConstraint!
    @IBOutlet weak var submitButtonWidth: NSLayoutConstraint!
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        
        cancelButtonWidth.constant = self.view.frame.size.width / 2
        submitButtonWidth.constant = submitButtonWidth.constant
        // 가로모드일때 view.frame.size.height / 2 해야함 ** 나중에 수정하기 
        

        super.viewDidLoad()
        
    }
    
}
