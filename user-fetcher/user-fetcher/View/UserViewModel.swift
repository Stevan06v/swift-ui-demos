//
//  UserViewModel.swift
//  user-fetcher
//
//  Created by Stevan Vlajic on 10.12.23.
//

import Foundation


class UserViewModel: ObservableObject{
    @Published private var model: UsersModel;
    
    init(model: UsersModel){
        self.model = model;
    }
    
    public func users() -> [User]{
        return model.users;
    }
    
    public func attachUsers(users: [User]){
        model.addUsers(user: users)
    }
}
