//
//  MyButtonStyle.swift
//  Redux_Tutorial_SwiftUI
//
//  Created by SeongMinK on 2021/12/17.
//

import SwiftUI

struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 20))
           .padding()
           .background(Color.green)
           .foregroundColor(Color.white)
           .cornerRadius(20)
    }
}

struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            
        }, label: {
            Text("MyButton")
                .fontWeight(.heavy)
        }).buttonStyle(MyButtonStyle())
    }
}
