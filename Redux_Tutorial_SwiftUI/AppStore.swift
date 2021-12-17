//
//  AppStore.swift
//  Redux_Tutorial_SwiftUI
//
//  Created by SeongMinK on 2021/12/17.
//

import Foundation

typealias AppStore = Store<AppState, AppAction>

// ObservableObject 앱 상태를 가지고 있는 옵저버블 오브젝트 스토어
final class Store<State, Action>: ObservableObject {
    @Published private(set) var state: State
    private let reducer: Reducer<State, Action>
    
    init(state: State, reducer: @escaping Reducer<State, Action>) {
        self.state = state
        self.reducer = reducer
    }
    
    func dispatch(action: Action) {
        reducer(&self.state, action)
    }
}
