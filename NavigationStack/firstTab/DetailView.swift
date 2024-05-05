//
//  DetailView.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 30/01/2024.
//

import SwiftUI

struct DetailView: View {
    
    let text: String
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack{
            Text("Detail View showing")
            Text(text)
            
            Divider()
            
            NavigationLink("Go to link 3", value: 3)
            NavigationLink("Go to link c", value: "CCC")
        }
        .navigationTitle(text)
        .navigationBarBackButtonHidden()
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                
                Button(action: {
                    path.removeLast()
                }, label: {
                    Image(systemName: "chevron.left.circle")
                })
                
               
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationStack{
            
            DetailView(text: "", path: .constant(NavigationPath()))
        }
    }
}
