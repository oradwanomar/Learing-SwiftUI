//
//  LoginView.swift
//  SwiftUI Advanced Data Flow
//
//  Created by Omar Radwan on 11/05/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var maxWidth: CGFloat?
    
    var body: some View {
            VStack {
                Group {
                    Button("M'inscrie") {}
                    Button("Me connecter") {}
                }
                .background {
                    GeometryReader { proxy in
                        Color.clear.maxButtonWidth(proxy.size.width)
                    }
                }
                // it must be before other modifiers
                .frame(maxWidth: maxWidth)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .cornerRadius(15)
                .font(.headline)
            }
            .onPreferenceChange(MaxButtonWidthPreferenceKey.self) { maxWidth in
                self.maxWidth = maxWidth
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
