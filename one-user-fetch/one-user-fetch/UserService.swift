//
//  UserService.swift
//  one-user-fetch
//
//  Created by Stevan Vlajic on 11.12.23.
//

import Foundation


class UserService{
    let URL_STR = "https://jsonplaceholder.typicode.com/users/";
    
    public func getUserById(userId: Int) async -> User {
        let buildURL = "\(URL_STR)\(userId)";
        let userURL: URL = URL(string: buildURL)!;
        var model: Model = Model();
        
        if let (data, _) = try? await URLSession.shared.data(from: userURL){
            if let parsedUser = try? JSONDecoder().decode(User.self, from: data){
                model.setUser(user: parsedUser);
            }else{
                print("Error while parsing....");
            }
        }else{
            print("Error while fetching...");
        }
        
        return model.user;
    }
}
