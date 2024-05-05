//
//  Book.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 30/01/2024.
//

import Foundation

struct Book: Identifiable, Hashable{
    var title: String
    let id: UUID
    
    init(title: String) {
        self.title = title
        self.id = UUID()
    }
    
    static func examples()-> [Book]{
        [
            Book(title: "Lord of the rings"),
            Book(title: "Game of Thrones")
        ]
    }
}
