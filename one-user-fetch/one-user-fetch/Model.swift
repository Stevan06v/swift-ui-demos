//
//  Model.swift
//  one-user-fetch
//
//  Created by Stevan Vlajic on 11.12.23.
//

import Foundation


struct Model {
    var user: User = User(id: 0,name: "",username: "",email: "",phone: "");
    var counter: Int = 0;
    
    mutating func setUser(user: User){
        self.user = user;
    }
    
    mutating func increase(){
        counter = counter + 1;
    }
}
