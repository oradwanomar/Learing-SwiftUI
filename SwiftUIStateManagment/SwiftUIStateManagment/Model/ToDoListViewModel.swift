//
//  ToDoListViewModel.swift
//  SwiftUIStateManagment
//
//  Created by Omar Radwan on 01/05/2023.
//

import Foundation

class ToDoListViewModel: ObservableObject {
    @Published var todoItems: [TodoItem] = []
    
    func loadItems() {
        guard todoItems.isEmpty else {return}
        do {
            self.todoItems = try .fromJSON(named: "TodoItems")
        } catch {
            fatalError("Error")
        }
    }
    
    func reorder() {
        todoItems.sort(by: { !$0.isDone && $1.isDone })
    }
    
    func removeItem(at indexSet: IndexSet) {
        todoItems.remove(atOffsets: indexSet)
    }
    
    func moveItem(from indexSet: IndexSet, to newIndex: Int) {
        todoItems.move(fromOffsets: indexSet, toOffset: newIndex)
    }
}
