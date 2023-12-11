struct User: Codable, Identifiable {
    
    private(set) var id: Int;
    private(set) var name: String;
    private(set) var username: String;
    private(set) var email: String;
    private(set) var phone: String;
    
    
    init(id: Int, name: String, username: String, email: String, phone: String){
        self.id = id;
        self.name = name;
        self.username = username;
        self.email = email;
        self.phone = phone;
    }
}
