//
//  FirstTabView.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 30/01/2024.
//

import SwiftUI

struct FirstTabView: View {
    
    @State var showSettings: Bool = false
    @State private var path = NavigationPath()
    
    var body: some View {
        VStack {
            NavigationStack(path: $path){
                
                List{
                    Text("Root View")
                    
                    NavigationLink("Go to A", value: "Show A")
                    
                    NavigationLink("Go to B", value: "Show B")
                    
                    NavigationLink("Go to c", value: 1)
                    
                    
                    NavigationLink("Old navigation Link", destination: {
                        Text("Old detsination Link")
                    })
                    
                    Button(action: {
                        showSettings.toggle()
                    }, label: {
                        Text("Settings")
                    })
                }
                .navigationDestination(for: String.self, destination: { textValue in
                    
    //                Text("detail with value: \(textValue)")
                    DetailView(text: textValue, path: $path)
                })
                
                .navigationDestination(for: Int.self, destination: { textValue in
                   Text("DEtail with: \(textValue)")
                })
                
                .navigationDestination(isPresented: $showSettings, destination: {
                    Text("Settings")
                })
                
            }
            
            
            VStack{
                Text("Path")
                Text("Number of views on the stack: \(path.count)")
                
                Button(action: {
                    path.removeLast()
                }, label: {
                    Text("Go back one view")
                })
                
                
                Button(action: {
                    path.append("GGGG")
                }, label: {
                    Text("Show favorite")
                })
                
                Button(action: {
                    path = NavigationPath()
                }, label: {
                    Text("Back to root")
                })
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
