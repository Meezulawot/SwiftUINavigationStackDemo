//
//  NavigationStateManager.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 31/01/2024.
//

import Foundation


class NavigationStateManager: ObservableObject{
    
    @Published var selectionPath = [SelectionState]()
    
//    var data: Data?{
//
//        get{
//            try? JSONEncoder().encode(selectionPath)
//        }
//css
//        set{
//            guard let data = newValue else{
//                let path = try? JSONDecoder().decode([SelectionState].self, from: data) else {
//                    return
//                }
//
//                self.selectionPath = path
//            }
//        }
//
//    }
    
    
    func popToRoot(){
        selectionPath = []
    }
    
    
    func goToSettings(){
        selectionPath = [.settings]
    }
}
