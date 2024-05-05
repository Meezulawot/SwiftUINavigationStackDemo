//
//  ThirdTabView.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 30/01/2024.
//

import SwiftUI

enum SelectionState: Hashable{
    case song(Song)
    case movie(Movie)
    case book(Book)
    case settings
}

struct ThirdTabView: View {
    
    @StateObject var modelDataManger = ModelDataManager()
    @StateObject var navigationStateManager = NavigationStateManager()
    
    var body: some View {
        NavigationStack(path: $navigationStateManager.selectionPath){
            RootView(modelDataManager: modelDataManger)
                .navigationDestination(for: SelectionState.self){ state in
                    Group{
                        switch state{
                        case .book(let book):
                            BookDestinationView(book: book)
                            
                        case .movie(let movie):
                            MovieDestinationView(movie: movie)
                            
                        case .song(let song):
                            SongDestinationView(song: song)
                            
                        case .settings:
                            SettingsView()
                        }
                    }
                    
                }
        }
        .environmentObject(modelDataManger)
        .environmentObject(navigationStateManager)
        
    }
}

struct ThirdTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabView()
    }
}
