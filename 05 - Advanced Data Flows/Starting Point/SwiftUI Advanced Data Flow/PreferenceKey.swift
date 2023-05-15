//
//  PreferenceKey.swift
//  SwiftUI Advanced Data Flow
//
//  Created by Omar Radwan on 11/05/2023.
//

import SwiftUI

//MARK: Max ButtonWidth
struct MaxButtonWidthPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0.0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = max(value, nextValue())
    }
}

//MARK: TextField input
struct TextFieldInputPreferenceKey: PreferenceKey {
    
    static let defaultValue =  ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

extension View {
    func textFieldInputData(_ text: String) -> some View {
        self.preference(key: TextFieldInputPreferenceKey.self, value: text)
    }
    
    func maxButtonWidth(_ maxWidth: CGFloat) -> some View {
        self.preference(key: MaxButtonWidthPreferenceKey.self, value: maxWidth)
    }
}
