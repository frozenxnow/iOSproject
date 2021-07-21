//
//  UserInformation.swift
//  iOSproject02
//
//  Created by 지원 on 2021/07/17.
//

import Foundation

class UserInformation {
    static let shared: UserInformation = UserInformation()
    
    
    var id: String?
    var password: String?
    var info: String?
    
    // 외부로부터 생성되는 인스턴스를 막기 위해 private 키워드 사용 
    private init() { }
}



