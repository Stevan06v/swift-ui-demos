import SwiftUI

struct ContentView: View {
    
   @ObservedObject var viewModel: ViewModel;
    
    var body: some View {
        VStack(alignment: .leading) {
            if viewModel.isVisible{
                
                Text("\(viewModel.model.counter)");
                
                Button(action:  {
                    viewModel.increase()
                }, label: {
                    Text("increase")
                        .multilineTextAlignment(.leading);
                })
                
                UserView(id: viewModel.getUser().id, name: viewModel.getUser().name, username: viewModel.getUser().username, email: viewModel.getUser().email, phone: viewModel.getUser().phone);
                
                Button(action: {
                    viewModel.isVisible = false;
                }, label: {
                    Text("Hide");
                })
                .padding(1.0)
                
            }else{
                Button(action: {
                    viewModel.isVisible = true;
                }, label: {
                    Text("Show")
                        .background(Color.purple);
                })
                .background(Color.red)
            }
        }.task {
            let user: User = await UserService().getUserById(userId:3)
            
            viewModel.setUser(user: user)
            print(user); 
            
        }
        .padding()
        .background(Color.orange)
        
    }
}

struct UserView: View{
    
    var id: Int;
    var name: String;
    var username: String;
    var email: String;
    var phone: String;

    
    var body: some View {
        VStack(alignment: .leading) {
            Text("ID: \(id)")
                .font(.headline)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
                .lineLimit(12);
            Text(name);
            Text(username);
            Text(email);
            Text(phone);
        }
    }
}


struct UserForm: View{
    
    @Binding var username: String;
    @Binding var name: String;
    @Binding var phone: String;
    @Binding var email: String;
    
    var body: some View{
        HStack{
            VStack{
                TextField(text: $username, label: {
                    Text("Username")
                })
                TextField(text: $name, label: {
                    Text("name")
                })
            }
            VStack{
                TextField(text: $phone, label: {
                    Text("phone")
                })
                TextField(text: $email, label: {
                    Text("email")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var model = Model();
    
    static var viewModel: ViewModel = ViewModel(model: model)
    
    static var previews: some View {
        ContentView(viewModel: viewModel)
    }
}
