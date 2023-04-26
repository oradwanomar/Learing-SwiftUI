//
//  TextBootcamp.swift
//  First Project
//
//  Created by Omar Radwan on 29/03/2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 16) {
            Text("Hello, Omar!")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
                .blur(radius: 0)
                .shadow(color: .gray, radius: 4, x: 4, y: 10)
                .foregroundColor(.black)
                .strikethrough()
            
            Text("Welcome back")
                .font(.title2)
                .fontWeight(.bold)
                .background(.blue)
            
            HStack {
                Image(systemName: "circle.fill")
                Text("Filled Cricle")
            }
            
            Group {
                Text("Ultra light")
                    .fontWeight(.ultraLight)
                Text("Thin")
                    .fontWeight(.thin)
                Text("Light")
                    .fontWeight(.light)
                Text("Tracking")
                    .tracking(10)
                Text("Kerning")
                    .kerning(-1)
            }
            
            VStack {
                //Font alignments
                Text("Leading")
                    .frame(maxWidth: 100, alignment:  .leading)
                Text("Center")
                    .frame(maxWidth: 100, alignment:  .center)
                Text("Trailing")
                    .frame(maxWidth: 100, alignment:  .trailing)
                Text("These lines are limited")
                    .frame(maxWidth: .infinity)
            }.border(Color.blue, width: 2)
            
            Text("Hello, World!".lowercased())
//                .font(.system(size: 24, weight: .heavy, design: .serif))
                .underline()
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 100, alignment: .center)
                .minimumScaleFactor(0.1)

        }.padding(.all)

    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
