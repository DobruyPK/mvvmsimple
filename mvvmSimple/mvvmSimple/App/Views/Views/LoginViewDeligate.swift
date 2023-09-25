//
//  LoginViewDeligate.swift
//  mvvmSimple
//
//  Created by Семен Трифонов on 25.09.2023.
//

import Foundation

protocol LoginViewDelegate{
    func butonTapped(login:String, password:String)-> String
}
