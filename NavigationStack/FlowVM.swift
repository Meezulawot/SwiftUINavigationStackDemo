////
////  FlowVM.swift
////  NavigationStack
////
////  Created by Meezu Lawot on 29/01/2024.
////
//
//import Foundation
//import SwiftUI
//
//
//class FlowVM: ObservableObject {
//
//    @Published var navigationPath = NavigationPath()
//
////    func navigateToLevel2() {
////        navigationPath.append(1)
////    }
////
////    func navigateToLevel3() {
////        navigationPath.append(2)
////    }
////
////    func navigateBack() {
////        navigationPath.removeLast()
////    }
////
////    func navigateToRoot() {
////        navigationPath = NavigationPath()
////    }
//
//
//    func makeScreen1VM() -> Screen1 {
//        let vm = Screen1(phoneNumber: model.phoneNumber)
//        vm.didComplete
//            .sink(receiveValue: didComplete1)
//            .store(in: &subscription)
//        return vm
//    }
//
//    func didComplete1(vm: HomeVM) {
//        navigationPath.append(.sendmoney(vm: ()))
//    }
//}
//
//
//struct FlowView: View{
//
//    @ObservedObject var vm: FlowVM
//
//    var body: some View{
//
//        NavigationStack(path: $vm.navigationPath, root: {
//            VStack{
//
//                Screen1(viewModel: vm)
//
//            }
//        })
//
//    }
//}
