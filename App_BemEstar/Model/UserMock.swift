//
//  UserMock.swift
//  App_BemEstar
//
//  Created by user288578 on 12/9/25.
//


import Foundation
import SwiftUI

// Classe observável para gerenciar a lista de usuários
@Observable
class UserMock {
    var mockUsers: [LoginType] = [
        LoginType(username: "Admin", password: "abc123"),
        LoginType(username: "Daniel", password: "pass123"),
        LoginType(username: "Maria", password: "mypassword"),
        LoginType(username: "Jose", password: "123")
    ]
    
    var currentUsername: String = "Daniel" // Usuário padrão
}
