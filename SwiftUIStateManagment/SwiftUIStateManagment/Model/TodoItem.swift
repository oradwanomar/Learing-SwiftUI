//
//  TodoItem.swift
//  SwiftUIStateManagment
//
//  Created by Omar Radwan on 26/04/2023.
//

import Foundation

struct TodoItem: Hashable, Codable, Identifiable {
    var id: UUID
    var title: String
    var description: String?
    var isDone: Bool = false
}
