//
//  ViewController.swift
//  TapGesture
//
//  Created by 지원 on 2021/06/12.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

//    제스처 인식기 액션 연결할 메서드
    @IBAction func tapView(_ snder: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // code로 tap gesture 연결하기
//        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.tapView(_:)))
//
//        self.view.addGestureRecognizer(tapGesture)
        
        
        
        // delegate를 사용해 tap gesture 연결하기 (1)
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer()
        tapGesture.delegate = self
        
        self.view.addGestureRecognizer(tapGesture)
        
    }
    
    // delegate를 사용해 tap gesture 연결하기 (2)
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        // 터치를 받아도 되냐? 받지말까??
        self.view.endEditing(true)
        return true // true, false 어떤것을 리턴해도 상관 없다 왜냐면 이게 실행되는건 이미 탭했다는 의미
    }
    
}

