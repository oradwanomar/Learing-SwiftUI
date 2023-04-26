//
//  ImageBootcamp.swift
//  First Project
//
//  Created by Omar Radwan on 05/04/2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("ex")
            .resizable()
//            .renderingMode(.template)
//            .foregroundColor(.red)
//            .aspectRatio(contentMode: .fill)
//            .scaledToFill()
            .frame(width: 300, height: 400, alignment: .center)
//            .clipped()
            .cornerRadius(200)
//            .clipShape(
//                Circle()
//                Rectangle()
//                RoundedRectangle(cornerRadius: 45)
//                Ellipse()
//            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
