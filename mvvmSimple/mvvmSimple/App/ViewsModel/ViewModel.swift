//
//  ViewModel.swift
//  mvvmSimple
//
//  Created by Семен Трифонов on 25.09.2023.
//

import Foundation

class ViewModel: LoginVCDelegate{
    var users = User.users
    
    func checkValidCredisinals(login: String, password: String) -> Bool {
        for user in self.users{
            if user.login == login && user.password == password{
                return true
            }
        }
        return false
    }
}

