//
//  SecondViewController.swift
//  ViewTransition
//
//  Created by 지원 on 2021/06/10.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func popViewPrev() {
        self.navigationController?.popViewController(animated: true)
    }
}
