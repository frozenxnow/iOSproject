//
//  ThirdPage.swift
//  iOSproject02
//
//  Created by 지원 on 2021/06/15.
//

import UIKit

class thirdViewController: UIViewController {
    
    let formatter = DateFormatter()
    
    @IBOutlet weak var picker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
       
        formatter.dateFormat = "yyyy년 MM월 dd일"
        dateLabel.text = formatter.string(from: sender.date)
    }
    
    @IBAction func touchUpInsideCancelButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func touchUpInsidePrevButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatter.dateFormat = "yyyy년 MM월 dd일"
        dateLabel.text = formatter.string(from: picker.date)
    }
}
