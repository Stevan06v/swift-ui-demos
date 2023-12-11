//
//  UsersService.swift
//  user-fetcher
//
//  Created by Stevan Vlajic on 10.12.23.
//

import Foundation

class UsersService{
    let URL_STRING = "https://jsonplaceholder.typicode.com/users";
    
    public func loadUser(id: Int) async -> User?{
        let str_url = "\(URL_STRING)/\(id)";
        let url = URL(string: str_url)!
        var user: User?
        
        if let (data, _) = try? await URLSession.shared.data(from: url){
            if let parsedData = try? JSONDecoder().decode(User.self, from: data){
                user = parsedData;
            }else{
                print("Error while parsing user...");
            }
        }else{
            print("Error while fetching data....");
        }
        return user;
    }
    
    public func loadMultipleUsers() async -> [User]{
        
        var users: [User] = [User]();
        
        for i in 1...10{
            // if not null then do thois
            if let user = await loadUser(id: i){
                users.append(user);
            }
        }
        return users;
    }
    
    
}
