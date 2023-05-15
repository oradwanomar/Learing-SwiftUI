//
//  ParentView.swift
//  SwiftUI Advanced Data Flow
//
//  Created by Omar Radwan on 11/05/2023.
//

import SwiftUI

struct ParentView: View {
    
    @State var textInput = ""
    
    var body: some View {
        VStack {
            Text("\(textInput)")
                .bold()
            
            ChildView()
        }
        .onPreferenceChange(TextFieldInputPreferenceKey.self) { newValue in
            textInput = newValue
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
