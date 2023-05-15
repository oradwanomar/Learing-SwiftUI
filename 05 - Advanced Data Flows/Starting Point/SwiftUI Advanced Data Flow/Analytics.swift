//
//  Analytics.swift
//  SwiftUI Advanced Data Flow
//
//  Created by Omar Radwan on 11/05/2023.
//

import Foundation

class Analytics {
    func send(tag: String) {
        print("The tag is \(tag) was sent")
    }
}

class MockedAnalytics: Analytics {
    override func send(tag: String) {
        print("Overriden method")
    }
}
