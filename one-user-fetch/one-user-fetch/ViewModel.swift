import Foundation

class ViewModel: ObservableObject {
    @Published var model: Model;
    @Published var isVisible: Bool = false;
    
    init(model: Model){
        self.model = model;
    }
    
    public func setUser(user: User){
        model.setUser(user: user);
    }
    
    public func increase(){
        model.increase();
    }
    
    public func getUser() -> User{
        return model.user;
    }
    

}
