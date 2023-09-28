import Foundation

struct User{
    let username: String?
    let login: String?
    let password: String?
    
    
    
}



class userModel{
    var users = [
        User(username: "Vasya", login: "Vasya", password: "1234"),
        User(username: "Petya", login: "Petya", password: "1234"),
    ]
}
extension userModel: ViewModelDeligate{
    func validation(login: String, password: String) -> Bool {
        for user in self.users{
            if user.login == login && user.password == password{
                return true
            }
        }
        return false
    }
}
