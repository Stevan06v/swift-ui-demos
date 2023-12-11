//
//  UsersModel.swift
//  user-fetcher
//
//  Created by Stevan Vlajic on 10.12.23.
//

import Foundation

// codeable allows us to decode and encode json
// The Model needs to match the given json string exactly
struct UsersModel {
    var users: [User] = [User]();
    
    mutating func addUsers(user: [User]){
        users.append(contentsOf: user)
    }
}
