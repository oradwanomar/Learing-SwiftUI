//
//  ShapesBootcamp.swift
//  First Project
//
//  Created by Omar Radwan on 30/03/2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
//        RoundedRectangle(cornerRadius: 20)
//            .stroke()
//            .fill(.red)
            .foregroundColor(Color.accentColor.opacity(0.2))
//            .stroke(.red, lineWidth: 20)
//            .stroke(Color.yellow, style:
//                        StrokeStyle(lineWidth: 20,
//                                    lineCap: .butt,
//                                    dash: [30]))
//            .trim(from: 0.3, to: 1.0)
//            .stroke(Color.red, lineWidth: 1)
            .frame(width: 200, height: 100, alignment: .center)
            .padding()
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
            .preferredColorScheme(.dark)
    }
}
