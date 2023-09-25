//
//  Dynamic.swift
//  mvvmSimple
//
//  Created by Семен Трифонов on 25.09.2023.
//

import Foundation

class Dynamic<T>{
    typealias Listner = (T) -> Void
    private var listner: Listner?
    
    func bind(_ listner: Listner?){
        self.listner = listner
    }
    var value: T {
        didSet{ // сработает когда будет устновлено новое значение value  и вызовет кложуру с этим значением 
            listner?(value)
        }
    }
    init(_ v: T){
        value = v
    }
}
