import UIKit

class ViewController: UIViewController {
    var loginScreen: LoginView = LoginView()
    var delegate: LoginVCDelegate?
    var loginViewModel: ViewModel =  ViewModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(loginScreen)
        loginScreen.snp.makeConstraints({(make) in
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        })
    
        loginScreen.deligate = self
    }
}

extension ViewController: LoginViewDelegate{
    func butonTapped(login: String, password: String) -> String {
        return delegate?.checkValidCredisinalsString(login: login, password: password) ?? "SMTH ERRORR"
    }
}

