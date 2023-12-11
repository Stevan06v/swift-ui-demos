//
//  user_fetcherApp.swift
//  user-fetcher
//
//  Created by Stevan Vlajic on 10.12.23.
//

import SwiftUI

@main
struct user_fetcherApp: App {
    
     static var usersModel = UsersModel()
     var viewModel: UserViewModel = UserViewModel(model: usersModel)
    
    var body: some Scene {
        WindowGroup {
            ContentView(userViewModel: viewModel)
        }
    }
}
