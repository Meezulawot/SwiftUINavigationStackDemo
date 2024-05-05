//
//  Song.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 30/01/2024.
//

import Foundation

struct Song: Identifiable, Hashable{
    var title: String
    let id: UUID
    
    init(title: String) {
        self.title = title
        self.id = UUID()
    }
    
    static func examples()-> [Song]{
        [
            Song(title: "All to well"),
            Song(title: "Better")
        ]
    }
}
