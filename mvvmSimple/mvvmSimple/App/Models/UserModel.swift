//
//  UserModel.swift
//  mvvmSimple
//
//  Created by Семен Трифонов on 25.09.2023.
//

import Foundation

struct User{
    let username: String
    let login: String
    let password: String
}

extension User{
    static var users = [
        User(username: "Vasya", login: "Vasya", password: "1234"),
        User(username: "Petya", login: "Petya", password: "1234"),
    ]
}

