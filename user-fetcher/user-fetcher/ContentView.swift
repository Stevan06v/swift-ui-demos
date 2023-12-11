//
//  ContentView.swift
//  user-fetcher
//
//  Created by Stevan Vlajic on 10.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userViewModel: UserViewModel;
    
    var body: some View {
        VStack {
            List(userViewModel.users()){
                user in
                ListLine(id: user.id, name: user.name, username: user.username, email: user.email, phone: user.phone, website: user.website)
            }
        
        }
        .padding()
        .task {
            let users:[User] = await UsersService().loadMultipleUsers()

            userViewModel.attachUsers(users: users)
        }
        
    }
}

struct ListLine: View{
    var id: Int;
    var name: String;
    var username: String;
    var email: String;
    var phone: String;
    var website: String;
    
    
    var body: some View {
        VStack {
            Text("\(id)");
            Text(name);
            Text(username);
            Text(email);
            Text(phone);
            Text(website);
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var usersModel = UsersModel()
    
    static var viewModel: UserViewModel = UserViewModel(model: usersModel)
    
    static var previews: some View {
        ContentView(userViewModel: viewModel)
    }
}
