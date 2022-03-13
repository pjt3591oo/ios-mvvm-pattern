//
//  ViewController.swift
//  mvvm-pattern
//
//  Created by 박정태 on 2022/03/13.
//

import UIKit

class ViewController: UIViewController {
    var userViewModel: UserViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userViewModel = UserViewModel(_view: self)
    }
    
    func onClick() {
        let user: User = User(name: "mung", age: "30")
        self.userViewModel?.add(user: user)
    }
                      
}

// userViewModel
extension ViewController: UserViewModelProtocol {
    func success() -> Void {}
    func fail() -> Void {}
}
