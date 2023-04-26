//
//  First_ProjectApp.swift
//  First Project
//
//  Created by Omar Radwan on 28/03/2023.
//

import SwiftUI

@main
struct First_ProjectApp: App {
    @Environment(\.scenePhase) var scenePhase
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { scene in
            if scene == .background {
                print("I'm in the background now")
            }
        }
    }
}
