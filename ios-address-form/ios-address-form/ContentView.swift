//
//  ContentView.swift
//  ios-address-form
//
//  Created by Stevan Vlajic on 11.12.23.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        
        Text("Addresse")
            .font(.headline)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding()
        
        if viewModel.isHidden {
            VStack(alignment: .leading) {
                TextField("Vorname", text: $viewModel.firstname)
                    .padding(10.0)
                    .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                
                
                TextField("Nachname", text: $viewModel.lastname)
                    .padding(10.0)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                
                
                HStack {
                    TextField("Straße", text: $viewModel.street)
                        .padding(10.0)
                        .frame(width: 300.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                    
                    TextField("Nr", text: $viewModel.streetNo)
                        .padding(10.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                    
                }
                HStack {
                    TextField("PLZ", text: $viewModel.zipCode)
                        .padding(10.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                    
                    TextField("Stadt", text: $viewModel.city)
                        .padding(10.0)
                        .frame(width: 300.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                }
                
                Button("Speichern"){
                    viewModel.saveData();
                }
                
            }.padding(10.0)
        }else{
            UserView(firstname: viewModel.model.getAddress().firstname, lastname: viewModel.model.getAddress().lastname, city: viewModel.model.getAddress().city, zipCode: viewModel.model.getAddress().zipCode, housNo: viewModel.model.getAddress().streetNo, street: viewModel.model.getAddress().street)
            
            Button("Back"){
                viewModel.changeVisibility();
            }
            
        }
    }
}


struct UserView: View{
    
    var firstname: String;
    var lastname: String;
    var city: String;
    var zipCode: String;
    var housNo: String;
    var street: String;


    var body: some View {
        Text("\(firstname)");
        Text("\(lastname)");
        Text("\(city)");
        Text("\(zipCode)");
        Text("\(housNo)");
        Text("\(street)");
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var model = Model()
    static var viewModel = ViewModel(model: model)
    static var previews: some View {
        ContentView(viewModel: viewModel)
    }
}

