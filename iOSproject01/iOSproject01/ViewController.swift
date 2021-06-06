//
//  ViewController.swift
//  iOSproject01
//
//  Created by 지원 on 2021/06/05.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var timer: Timer!
    var player: AVAudioPlayer!
    
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
    
    func initializePlayer() {
        guard let soundAsset: NSDataAsset = NSDataAsset(name: "sound") else {
            print("음원 파일 에셋을 가져올수 없습니다.")
            return
        }
        
        do {
            try self.player = AVAudioPlayer(data: soundAsset.data)
            self.player.delegate = self
        } catch let error as NSError {
            print("player 초기화 실패")
            print(error.code)
            print(error.localizedDescription)
        }
        
        self.progressSlider.maximumValue = Float(self.player.duration)
        self.progressSlider.minimumValue = 0
        self.progressSlider.value = Float(self.player.currentTime)
    }
    
    func updateTimeLabelText (time: TimeInterval) {
        let minute = Int(time / 60)
        let second = time.truncatingRemainder(dividingBy: 60)
        let milisecond = Int(time.truncatingRemainder(dividingBy: 1) * 100)
        
        let timeText = "\(minute):\(second):\(milisecond)"
        
        self.timeLabel.text = timeText
    }
    
    func makeAndFireTimer() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { [weak self] (timer: Timer) in
            if ((self?.progressSlider.isTracking) != nil) { return }
            
            self?.updateTimeLabelText(time: self?.player.currentTime ?? "")
            self?.progressSlider.value = Float(self?.player.currentTime)
        })
        self.timer.fire()
    }
    
}

