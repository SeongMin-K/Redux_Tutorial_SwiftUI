//
//  AppState.swift
//  Redux_Tutorial_SwiftUI
//
//  Created by SeongMinK on 2021/12/17.
//

import Foundation

// App의 상태 데이터
struct AppState {
    var currentDice: String = "" {
        didSet {
            print("currentDice: \(currentDice)", #fileID, #function)
        }
    }
}
