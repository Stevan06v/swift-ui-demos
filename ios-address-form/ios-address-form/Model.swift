//
//  Model.swift
//  ios-address-form
//
//  Created by Stevan Vlajic on 11.12.23.
//

import Foundation


struct Model{
    private var address: Address = Address(firstname: "", lastname: "", street: "", streetNo: "", zipCode: "", city: "");
    
    mutating func setAddress(address: Address){
        self.address = address; 
    }
    
    public func getAddress() -> Address{
        return self.address;
    }
}
