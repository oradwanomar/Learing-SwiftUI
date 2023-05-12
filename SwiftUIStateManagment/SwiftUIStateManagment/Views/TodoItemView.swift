//
//  TodoItemView.swift
//  SwiftUIStateManagment
//
//  Created by Omar Radwan on 26/04/2023.
//

import SwiftUI

struct TodoItemView: View {
    
    @Binding var todoItem: TodoItem
    
    var body: some View {
        HStack {
            TodoToggleButton(state: $todoItem.isDone)
                .frame(width: 40, height: 40, alignment: .center)
            VStack(alignment: .leading) {
                Text(todoItem.title)
                    .font(.headline)
                    .strikethrough(todoItem.isDone)
                
                if let description = todoItem.description {
                    Text(description)
                        .font(.subheadline)
                        .strikethrough(todoItem.isDone)
                }
            }
            .padding(.leading)
            Spacer()
            
        }
        .padding()
    }
}

struct TodoItemView_Previews: PreviewProvider {
    
    static let mockedTodoItemWithMilk = TodoItem(
        id: UUID(),
        title: "Buy some milk 🥛")
    
    static var previews: some View {
        Group {
            StatefulPreviewWrapper(value: mockedTodoItemWithMilk) { todoItem in
                TodoItemView(todoItem: todoItem)
            }.previewDisplayName("with description")

        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
