//
//  one_user_fetchApp.swift
//  one-user-fetch
//
//  Created by Stevan Vlajic on 11.12.23.
//

import SwiftUI

@main
struct one_user_fetchApp: App {
    static var usersModel = Model()
    var viewModel: ViewModel = ViewModel(model: usersModel)
   
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
