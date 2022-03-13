//
//  userViewModel.swift
//  mvvm-pattern
//
//  Created by 박정태 on 2022/03/13.
//

import Foundation

class UserViewModel {
    var users: Array<User> = []
    var view: UserViewModelProtocol
    
    init(_view: UserViewModelProtocol) {
        self.view = _view
    }
    
    func add(user: User) {
        do {
            self.users.append(user)
            self.view.success()
        } catch {
            self.view.fail()
        }
        
    }
}

protocol UserViewModelProtocol {
    func success() -> Void
    func fail() -> Void
}
