//
//  LoginViewDeligate.swift
//  mvvmSimple
//
//  Created by Семен Трифонов on 25.09.2023.
//

import Foundation

protocol LoginVCDeligate{
    func checkValidCredisinals(login: String, password:String)->String
}
