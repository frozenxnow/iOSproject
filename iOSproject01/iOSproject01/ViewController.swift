//
//  ViewController.swift
//  iOSproject01
//
//  Created by 지원 on 2021/06/05.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var progressSlider: UISlider!
    @IBOutlet weak var timeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func touchUpPlayPauseButton(_ sender: UIButton) {
        print("button")
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        print(#function)
    }
}

