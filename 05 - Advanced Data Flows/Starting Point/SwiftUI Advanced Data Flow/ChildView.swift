//
//  ChildView.swift
//  SwiftUI Advanced Data Flow
//
//  Created by Omar Radwan on 11/05/2023.
//

import SwiftUI

struct ChildView: View {
    
    @State var text = ""
    
    var body: some View {
        Form {
            TextField("Write something", text: $text)
        }
        .textFieldInputData(text)
    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView()
    }
}
