//
//  LoginViewWithSyncView.swift
//  SwiftUI Advanced Data Flow
//
//  Created by Omar Radwan on 12/05/2023.
//

import SwiftUI

struct LoginViewWithSyncView: View {
    
    var body: some View {
            SyncingView { proxy in
                Group {
                    Button("M'inscrie") {}
                    Button("Me connecter") {}
                }
                .syncWidth(proxy)
                .padding()
                .background(Color.pink)
                .foregroundColor(.white)
                .cornerRadius(15)
                .font(.headline)
            }
    }
}

struct LoginViewWithSyncView_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewWithSyncView()
    }
}
