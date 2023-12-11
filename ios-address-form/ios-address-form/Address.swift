//
//  Address.swift
//  ios-address-form
//
//  Created by Stevan Vlajic on 11.12.23.
//

import Foundation

struct Address {
    
    private(set) var firstname: String;
    private(set) var lastname: String;
    private(set) var street: String;
    private(set) var streetNo: String;
    private(set) var zipCode: String;
    private(set) var city: String;
    
    
     init(firstname: String, lastname: String, street: String, streetNo: String, zipCode: String, city: String) {
        self.firstname = firstname
        self.lastname = lastname
        self.street = street
        self.streetNo = streetNo
        self.zipCode = zipCode
        self.city = city
    }
    
}
