import Foundation
import UIKit
import SnapKit

class LoginView: UIView{
    let label: UILabel = UILabel()
    var statusText: UILabel = UILabel()
    
    let login: UITextField = UITextField()
    let password: UITextField = UITextField()
    
    let button: UIButton = UIButton()

    var deligate: LoginViewDelegate?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    func configureView(){
        label.text =    "Login Screen"
        addSubview(label)
        label.snp.makeConstraints({(make) in
            make.height.equalTo(55)
            make.trailing.equalToSuperview()
            make.width.equalToSuperview()
            make.top.equalToSuperview().offset(50)
        })
        label.textAlignment = .center
        label.baselineAdjustment = .alignCenters
        label.font = UIFont.systemFont(ofSize: 50)
        
        addSubview(login)
        login.snp.makeConstraints({(make) in
            make.top.equalTo(label.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.height.equalTo(30)
        })
        login.backgroundColor = .white
        login.textColor = .black
        
        addSubview(password)
        password.snp.makeConstraints({(make) in
            make.top.equalTo(login.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.height.equalTo(30)
        })
        password.backgroundColor = .white
        password.textColor = .black
        
        addSubview(statusText)
        statusText.snp.makeConstraints({(make) in
            make.top.equalTo(password.snp.bottom).offset(20)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(30)
        })
        statusText.textAlignment = .center
        statusText.baselineAdjustment = .alignCenters
        statusText.font = UIFont.systemFont(ofSize: 20)
        statusText.isHidden = true
        statusText.isUserInteractionEnabled = false
        
        addSubview(button)
        button.snp.makeConstraints({(make) in
            make.top.equalTo(statusText.snp.bottom) .offset(30)
            make.height.equalTo(40)
            make.width.equalTo(80)
            make.centerX.equalToSuperview()
        })
        button.backgroundColor = .gray
        button.setTitle("LOGIN", for: .normal)
        button.addTarget(self, action: #selector(butonTapped), for: .touchUpInside)
    }
    @objc func butonTapped(){
        
        statusText.text = deligate?.butonTapped(login: login.text ?? "", password: password.text ?? "")
        statusText.isHidden = false
        statusText.isUserInteractionEnabled = true
    }
}


