//
//  ContentView.swift
//  Redux_Tutorial_SwiftUI
//
//  Created by SeongMinK on 2021/12/17.
//

import SwiftUI

struct ContentView: View {
    let store = AppStore(state: AppState.init(currentDice: "⚀"), reducer: appReducer(_:_:))
    
    var body: some View {
        DiceView().environmentObject(store)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
