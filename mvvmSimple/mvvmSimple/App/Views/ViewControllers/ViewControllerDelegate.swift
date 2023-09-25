//
//  ViewControllerDelegate.swift
//  mvvmSimple
//
//  Created by Семен Трифонов on 25.09.2023.
//

import Foundation

protocol LoginVCDelegate{
    func checkValidCredisinals(login:String, password:String)-> Bool
}
