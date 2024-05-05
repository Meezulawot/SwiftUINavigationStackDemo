//
//  ContentView.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 29/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectionIndex:Int = 0
    
    var body: some View {
        
        TabView(selection: $selectionIndex){
            FirstTabView()
                .tabItem{
                    Label("First tab", systemImage: "house")
                }
                .tag(0)
            
            SecondTabView()
                .tabItem{
                    Label("Second tab", systemImage: "house")
                }
                .tag(1)
            
            ThirdTabView()
                .tabItem{
                    Label("Third tab", systemImage: "house")
                }
                .tag(2)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
