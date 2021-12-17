//
//  DiceView.swift
//  Redux_Tutorial_SwiftUI
//
//  Created by SeongMinK on 2021/12/17.
//

import SwiftUI

struct DiceView: View {
    // 외부에서 environmentObject()로 연결됨
    @EnvironmentObject var store: AppStore
    @State private var shouldRoll = false
    @State private var isPressed = false
    
    var diceRollAnimation: Animation {
        Animation.spring()
    }
    
    func rollTheDice() {
        print(#fileID, #function, "called")
        self.shouldRoll.toggle()
        self.store.dispatch(action: .rollTheDice)
    }
    
    var body: some View {
        VStack {
            Text(self.store.state.currentDice)
                .font(.system(size: 300, weight: .bold, design: .monospaced))
                .rotationEffect(.degrees(shouldRoll ? 360 : 0))
                .animation(diceRollAnimation)
            Button(action: {
                self.rollTheDice()
            }, label: {
                Text("주사위 굴리기")
                    .fontWeight(.black)
            })
                .buttonStyle(MyButtonStyle())
                .scaleEffect(isPressed ? 0.8 : 1.0)
                .onLongPressGesture(minimumDuration: .infinity, maximumDistance: .infinity, pressing: { pressing in
                    withAnimation(.easeInOut(duration: 0.2), {
                        self.isPressed = pressing
                    })
                }, perform: {})
        }
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView()
    }
}
