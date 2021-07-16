//
//  ThirdPage.swift
//  iOSproject02
//
//  Created by 지원 on 2021/06/15.
//

import UIKit

class thirdViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        print("changed")
    }
    @IBAction func touchUpInsideCancelButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func touchUpInsidePrevButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
