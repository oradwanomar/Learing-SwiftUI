//
//  AdvancedLayoutView.swift
//  Discover SwiftUI Layout
//
//  Created by Omar Radwan on 26/04/2023.
//

import SwiftUI

extension VerticalAlignment {
    enum AccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    static let accountAndName = VerticalAlignment(AccountAndName.self)
}

struct AdvancedLayoutView: View {
    var body: some View {
        HStack(alignment: .accountAndName) {
            VStack {
                Text("@_omarradwan")
                    .alignmentGuide(.accountAndName) { d in
                        d[VerticalAlignment.center]
                    }
                    .padding()
                    .background(Color.blue)
                Image("omar")
                    .resizable()
                    .frame(width: 64,height: 64)
            }
            
            VStack {
                Text("Full name:")
                    .background(Color.red)
                    .padding()
                Text("Omar Radwan")
                    .alignmentGuide(.accountAndName) { d in
                        d[VerticalAlignment.center]
                    }
                    .font(.largeTitle)
            }
        }
    }
}

struct AdvancedLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedLayoutView()
    }
}
