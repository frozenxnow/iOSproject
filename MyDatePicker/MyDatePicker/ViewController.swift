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
    
    let dateFormatter: DateFormatter = {
        let dateFormaater = DateFormatter()
//        dateFormaater.dateStyle = .medium
//        dateFormaater.timeStyle = .medium
        dateFormaater.dateFormat = "yyyy/MM/dd hh:mm:ss"
        return dateFormaater
    }()
    
    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker) {
        print("value change")
        
        let dateString: String = dateFormatter.string(from: sender.date)
        
        dateLabel.text = dateString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.datePicker.addTarget(self, action: #selector(didDatePickerValueChanged(_:)), for: .valueChanged)
    }


}

