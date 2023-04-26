//
//  GradientBootcamp.swift
//  First Project
//
//  Created by Omar Radwan on 31/03/2023.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                LinearGradient(colors: [.blue.opacity(0.4), .blue],
//                                 startPoint: .leading,
//                                 endPoint: .bottom)
//                RadialGradient(colors: [.accentColor, .green],
//                               center: .bottomTrailing,
//                               startRadius: 10,
//                               endRadius: 100)
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
