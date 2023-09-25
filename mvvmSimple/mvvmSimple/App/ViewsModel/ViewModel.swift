//
//  ViewModel.swift
//  mvvmSimple
//
//  Created by Семен Трифонов on 25.09.2023.
//

import Foundation

class ViewModel: LoginVCDelegate{
    var viewController: ViewController = ViewController()
    var delegat: ViewModelDeligate? = User() as? ViewModelDeligate
    func checkValidCredisinals(login: String, password: String) -> Bool {
        if let users = self.delegat?.users{
            for user in users{
                if user.login == login && user.password == password{
                    return true
                }
            }
        }
        return false
    }
}

