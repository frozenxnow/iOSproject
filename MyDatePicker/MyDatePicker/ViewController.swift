//
//  ViewController.swift
//  MyDatePicker
//
//  Created by 지원 on 2021/06/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker) {
        print("value change")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.datePicker.addTarget(self, action: #selector(didDatePickerValueChanged(_:)), for: .valueChanged)
    }


}

