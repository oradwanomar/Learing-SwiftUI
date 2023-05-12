//
//  ToDoItemDetailsView.swift
//  SwiftUIStateManagment
//
//  Created by Omar Radwan on 04/05/2023.
//

import SwiftUI

struct ToDoItemDetailsView: View {
    
    @Binding var todoItem: TodoItem
    
    var body: some View {
        Form {
            TextField("Title", text: $todoItem.title)
                .font(.headline)
            TextField("Description", text: $todoItem.description.whenEmpty(""))
                .font(.subheadline)
        }
        .navigationTitle("Edit")
    }
}

struct ToDoItemDetailsView_Previews: PreviewProvider {
    
    static let mockedTodoItemWithMilk = TodoItem(
        id: UUID(),
        title: "Buy some milk 🥛")
    
    static var previews: some View {
        StatefulPreviewWrapper(value: mockedTodoItemWithMilk) { i in
            ToDoItemDetailsView(todoItem: i)
        }
    }
}
