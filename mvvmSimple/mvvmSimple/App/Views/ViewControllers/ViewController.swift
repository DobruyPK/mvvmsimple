import UIKit

class ViewController: UIViewController {
    var loginScreen: LoginView = LoginView()
    var delegate: LoginVCDelegate?
    var loginViewModel: ViewModel =  ViewModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self.loginViewModel
        
        view.backgroundColor = .red
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
        if let resValidion = delegate?.checkValidCredisinals(login: login, password: password){
            if resValidion{
                return "OK"
            }
            return "SMTH WRONG!!!!"
        }
        return "SMTH WRONG!!!!"
    }
}

