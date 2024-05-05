//
//  RootView.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 30/01/2024.
//

import SwiftUI

struct RootView: View {
    
    @ObservedObject var modelDataManager: ModelDataManager
    
    var body: some View {
        List{
            Section("Songs"){
                ForEach(modelDataManager.songs, content: {song in
                    NavigationLink(song.title, value: SelectionState.song(song))
                })
            }
            
            Section("Movies"){
                ForEach(modelDataManager.movies, content: {movie in
                    NavigationLink(movie.title, value: SelectionState.movie(movie))
                })
            }
            
            Section("Books"){
                ForEach(modelDataManager.books, content: {book in
                    NavigationLink(book.title, value: SelectionState.book(book))
                })
            }
            
        }
        .navigationTitle("Root View")
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(modelDataManager: ModelDataManager())
    }
}
