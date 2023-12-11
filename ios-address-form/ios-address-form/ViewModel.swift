//
//  ViewModel.swift
//  ios-address-form
//
//  Created by Stevan Vlajic on 11.12.23.
//

import Foundation

class ViewModel: ObservableObject{
    
    
    @Published private (set) var model: Model;
    
    init(model: Model) {
           self.model = model
       }
     
    
    var firstname: String = "" {
        didSet{
            print("firstname changed: \(firstname)")
        }
    };
    var lastname: String = "" {
        didSet{
            print("lastname changed: \(lastname)")
        }
    };
    var street: String = "" {
        didSet{
            print("street changed: \(street)")
        }
    };
    var streetNo: String = "" {
        didSet{
            print("streetNo changed: \(streetNo)")
        }
    };
    var zipCode: String = "" {
        didSet{
            print("zipCode changed: \(zipCode)")
        }
    };
    var city: String = "" {
        didSet{
            print("city changed: \(city)")
        }
    };
    
    @Published var isHidden = true;
    
    public func saveData(){
        let address: Address = Address(firstname: self.firstname, lastname: self.lastname, street: self.street, streetNo: self.streetNo, zipCode: self.zipCode, city: self.city)
        
        model.setAddress(address: address)
        
        print(address)
        
        changeVisibility()
    }
    
    
    public func changeVisibility(){
        isHidden = !isHidden;
    }
   
}
