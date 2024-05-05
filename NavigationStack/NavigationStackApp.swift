//
//  NavigationStackApp.swift
//  NavigationStack
//
//  Created by Meezu Lawot on 29/01/2024.
//

import SwiftUI

@main
struct NavigationStackApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//    @StateObject var viewModel: FlowVM = FlowVM()
    
    var body: some Scene {
        WindowGroup {
           ContentView()
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        return true
    }
}
