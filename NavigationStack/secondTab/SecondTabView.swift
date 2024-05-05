//
//  SecondTabView.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 30/01/2024.
//

import SwiftUI

struct SecondTabView: View {
    
    let books: [Book] = Book.examples()
    
    @State var selectedBookPath = [Book]()
    
    var body: some View {
        VStack {
            NavigationStack(path: $selectedBookPath){
                List{
                    ForEach(books) { book in
                        NavigationLink(book.title, value: book)
                    }
                }
                .navigationDestination(for: Book.self, destination: {book in
                    BookDestinationView(book: book)
                })
            }
            
            VStack {
                
                Button(action: {
                    guard let book = books.first else { return }
                    selectedBookPath = [book]
                }, label: {
                    Text("Go to favourite")
                })
                
                ForEach(selectedBookPath) { book in
                    Text(book.title)
                }
            }
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
