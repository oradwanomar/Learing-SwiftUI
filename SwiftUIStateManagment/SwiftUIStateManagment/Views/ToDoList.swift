//
//  ContentView.swift
//  SwiftUIStateManagment
//
//  Created by Omar Radwan on 26/04/2023.
//

import SwiftUI

struct ToDoList: View {
    
    @StateObject var viewModel = ToDoListViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($viewModel.todoItems) { $item in
                    NavigationLink(value: item) {
                        TodoItemView(todoItem: $item.onNewValue {
                            viewModel.reorder()
                        })
                    }
//                    NavigationLink {
//                        ToDoItemDetailsView(todoItem: $item)
//                    } label: {
//                        TodoItemView(todoItem: $item.onNewValue {
//                            viewModel.reorder()
//                        })
//                    }
                }
                .onDelete(perform: viewModel.removeItem(at:))
                .onMove(perform: viewModel.moveItem(from:to:))
            }
            .navigationTitle("Today's Tasks")
            .navigationDestination(for: TodoItem.self, destination: { todoItem in
                let bindableItem = Binding(
                    get: {
                        viewModel.todoItems.first(where: {$0.id == todoItem.id})!
                    },
                    set: { newItem in
                        let index = viewModel.todoItems.firstIndex(where: {$0.id == todoItem.id})!
                        viewModel.todoItems[index] = newItem
                    })
                ToDoItemDetailsView(todoItem: bindableItem)
            })
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
            .onAppear {
                viewModel.loadItems()
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList()
    }
}
