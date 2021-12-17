//
//  Reducer.swift
//  Redux_Tutorial_SwiftUI
//
//  Created by SeongMinK on 2021/12/17.
//

import Foundation

// typealias: 별칭 만들기
// (inout State, Action) -> Void 해당 클로져를 리듀서로 칭함
typealias Reducer<State, Action> = (inout State, Action) -> Void

func appReducer(_ state: inout AppState, _ action: AppAction) -> Void {
    switch action {
    case .rollTheDice:
        state.currentDice = ["⚀", "⚁", "⚂", "⚃", "⚄", "⚅"].randomElement() ?? "⚀"
    }
}
