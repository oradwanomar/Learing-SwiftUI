//
//  TipKitApp.swift
//  TipKit
//
//  Created by Omar Radwan on 11/06/2023.
//

import SwiftUI

@main
struct TipKitApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        TipsCenter.shared.configure()
    }
}
