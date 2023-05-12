//
//  ParentView.swift
//  SwiftUIStateManagment
//
//  Created by Omar Radwan on 04/05/2023.
//

import SwiftUI

struct ParentView: View {
    enum Tab: Hashable {
        case todos
        case about
    }
    
    @State var selectedTab: Tab = .todos
    
    var body: some View {
        TabView {
            ToDoList()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("TODOs")
                }
                .tag(Tab.todos)
            AboutView()
                .tabItem {
                    Image(systemName: "questionmark.circle.fill")
                    Text("About")
                }
                .tag(Tab.about)
        }
        .onChange(of: selectedTab) { newValue in
            print(newValue)
        }
    }
}
