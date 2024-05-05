//
//  Movie.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 30/01/2024.
//

import Foundation

struct Movie: Identifiable, Hashable{
    var title: String
    let id: UUID
    
    init(title: String) {
        self.title = title
        self.id = UUID()
    }
    
    static func examples()-> [Movie]{
        [
            Movie(title: "Titanic"),
            Movie(title: "Avatar")
        ]
    }
}
