//
//  EnvironmentKeys.swift
//  SwiftUI Advanced Data Flow
//
//  Created by Omar Radwan on 11/05/2023.
//

import SwiftUI

private struct AnalyticsEnvironmentKey: EnvironmentKey {
    static let defaultValue: Analytics = Analytics()
}

extension EnvironmentValues {
    var analytics: Analytics {
        get { self[AnalyticsEnvironmentKey.self] }
        //MARK: We can comment set and make it read only and can't inject mockedAnalytics
        set {  self[AnalyticsEnvironmentKey.self] = newValue }
    }
}
