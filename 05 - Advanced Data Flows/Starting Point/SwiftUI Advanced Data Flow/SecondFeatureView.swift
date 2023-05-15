//
//  SecondFeatureView.swift
//  SwiftUI Advanced Data Flow
//
//  Created by Omar Radwan on 04/09/2021.
//

import SwiftUI

struct SecondFeatureView: View {
    
    @Environment(\.analytics) var analytics: Analytics
    
    var body: some View {
        Text("Feature n°2️⃣")
            .onAppear {
                analytics.send(tag: "\(#fileID)")
            }
    }
}

struct SecondFeature_Previews: PreviewProvider {
    static var previews: some View {
        SecondFeatureView()
    }
}
