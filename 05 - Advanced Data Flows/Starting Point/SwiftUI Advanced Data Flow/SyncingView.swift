//
//  SyncingView.swift
//  SwiftUI Advanced Data Flow
//
//  Created by Omar Radwan on 16/05/2023.
//

import SwiftUI

struct SyncViewProxy {
    fileprivate var maxWidth: CGFloat?
}

struct SyncingView<Content: View>: View {
    
    @State var proxy = SyncViewProxy()
    
    @ViewBuilder var content: (SyncViewProxy) -> Content
    
    var body: some View {
        VStack {
            content(proxy)
        }
        .onPreferenceChange(MaxButtonWidthPreferenceKey.self) { maxWidth in
            proxy.maxWidth = maxWidth
        }
    }
}

struct SyncingWidthModifier: ViewModifier {
    
    var proxy: SyncViewProxy
    
    func body(content: Content) -> some View {
        content
            .background {
                GeometryReader { proxy in
                    Color.clear.maxButtonWidth(proxy.size.width)
                }
            }
            .frame(maxWidth: proxy.maxWidth)
    }
}

extension View {
    func syncWidth(_ proxy: SyncViewProxy) -> some View {
        self.modifier(SyncingWidthModifier(proxy: proxy))
    }
}
