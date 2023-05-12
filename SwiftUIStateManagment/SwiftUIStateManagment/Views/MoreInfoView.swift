//
//  MoreInfoView.swift
//  SwiftUIStateManagment
//
//  Created by Omar Radwan on 05/05/2023.
//

import SwiftUI

struct MoreInfoView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("More Info View")
                .font(.headline)
                .bold()
            .padding()
            
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

struct MoreInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfoView()
    }
}
