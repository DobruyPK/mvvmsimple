import Foundation

class User{
    let username: String?
    let login: String?
    let password: String?
    init(_ username: String? = nil, _ login: String? = nil, _ password: String? = nil) {
        self.username = username
        self.login = login
        self.password = password
    }
}

extension User{
    static var users = [
        User("Vasya", "Vasya", "1234"),
        User("Petya", "Petya", "1234"),
    ]
}

