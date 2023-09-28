//
//  ViewModelDeligate.swift
//  mvvmSimple
//
//  Created by Семен Трифонов on 25.09.2023.
//

import Foundation


protocol ViewModelDeligate{
    func validation(login: String, password: String) -> Bool
}
