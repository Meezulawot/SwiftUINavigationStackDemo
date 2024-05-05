//
//  BookDestinationView.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 30/01/2024.
//

import SwiftUI

struct BookDestinationView: View {
    
    let book: Book
    
    var body: some View {
        VStack{
            Text("Book Detail View")
            
            Divider()
            
            NavigationLink("suggestion 1", value: SelectionState.book(Book(title: "suggestion 1")))
            NavigationLink("suggestion 2", value: SelectionState.book(Book(title: "suggestion 2")))
            NavigationLink("suggestion 3", value: SelectionState.book(Book(title: "suggestion 3")))
        }
        .navigationTitle(book.title)
    }
}

struct BookDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        BookDestinationView(book: Book(title: "something"))
    }
}



struct MovieDestinationView: View {
    
    let movie: Movie
    
    var body: some View {
        VStack{
            Text("Movie Detail View")
            
            Divider()
            
            Text(movie.title)
            
        }
        .navigationTitle(movie.title)
    }
}

struct MovieDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDestinationView(movie: Movie(title: "something"))
    }
}



struct SongDestinationView: View {
    
    let song: Song
    
    @EnvironmentObject var modelDataManager: ModelDataManager
    @EnvironmentObject var navigationStateManager: NavigationStateManager
    
    var body: some View {
        VStack{
            Text("Song Detail View")
            
            Text(song.title)
            
            Divider()
            
            
            Text("People also liked!")
            
            VStack{
                ForEach(modelDataManager.songs){song in
                    NavigationLink(value: SelectionState.song(song), label: {
                        Label(song.title, systemImage: "music.note")
                    })
                }
            }
            
            Button(action: {
                navigationStateManager.popToRoot()
            }, label: {
                Text("Go to root")
            })
            
        }
        .navigationTitle(song.title)
        .toolbar{
            ToolbarItem(placement: .primaryAction){
                Button(action: {
                    navigationStateManager.goToSettings()
                }, label: {
                    Image(systemName: "gear")
                })
            }
        }
    }
}


struct SongDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        SongDestinationView(song: Song(title: "something"))
            .environmentObject(ModelDataManager())
    }
}
