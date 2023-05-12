//
//  AboutView.swift
//  SwiftUIStateManagment
//
//  Created by Omar Radwan on 04/05/2023.
//

import SwiftUI

struct AboutView: View {
    
    @State var modelShouldShown = false
    
    var body: some View {
        VStack {
            Text("This app is made during\n a SwiftUI course 🍫🍭")
                .font(.headline).bold()
                .multilineTextAlignment(.center)
                .padding()
            
            Button("More Info?") {
                modelShouldShown = true
            }
        }.sheet(isPresented: $modelShouldShown) {
            MoreInfoView()
            // Just in iOS 16
                .presentationDetents([.medium,.large,.fraction(0.25)])
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
