//
//  ViewController.swift
//  mvvmSimple
//
//  Created by Семен Трифонов on 25.09.2023.
//

import UIKit

class ViewController: UIViewController {
    var viewModel: ViewModel = ViewModel()
    var statusText: UILabel = UILabel()
    var loginScreen: LoginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(loginScreen)
        loginScreen.snp.makeConstraints({(make) in
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        })
        
        bindViewModel()
        // Do any additional setup after loading the view.
    }
    
    func bindViewModel(){
        viewModel.statustext.bind({(statsText) in
            DispatchQueue.main.async {
                self.statusText.text = statsText
            }
        })
    }


}

