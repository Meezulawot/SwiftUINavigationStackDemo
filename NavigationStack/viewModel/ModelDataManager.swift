//
//  ModelDataManager.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 30/01/2024.
//

import Foundation

class ModelDataManager: ObservableObject{
    @Published var books = Book.examples()
    @Published var songs = Song.examples()
    @Published var movies = Movie.examples()
    
}
