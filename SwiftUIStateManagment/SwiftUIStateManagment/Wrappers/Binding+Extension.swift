//
//  Binding+Extension.swift
//  SwiftUIStateManagment
//
//  Created by Omar Radwan on 02/05/2023.
//

import SwiftUI

extension Binding {
    func whenEmpty<Wrapped>(_ defaultValue: Wrapped) -> Binding<Wrapped> where Value == Wrapped? {
        Binding<Wrapped>(
            get: { wrappedValue ?? defaultValue },
            set: { wrappedValue = $0 }
        )
    }
    
    func onNewValue(_ sideEffect: @escaping () -> Void) -> Binding<Value> {
        Binding (
            get: { wrappedValue },
            set: {
                wrappedValue = $0
                sideEffect()
            })
    }
}
