//
//  LoginView.swift
//  mvvmSimple
//
//  Created by Семен Трифонов on 25.09.2023.
//

import Foundation
import UIKit
import SnapKit

class LoginView: UIView{
    let label:       UILabel = UILabel()
    let login:        UILabel = UILabel()
    let password:    UILabel = UILabel()
    var statusText:  UILabel = UILabel()
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    func configureView(){
        label.text =    "Login Screen"
        login.text =    "Login:"
        password.text = "Password:"
        addSubview(label)
        label.snp.makeConstraints({(make) in
            make.height.equalTo(50)
            make.trailing.equalToSuperview()
            make.width.equalToSuperview()
            make.top.equalToSuperview().offset(50)
        })
        
    }
    
}
