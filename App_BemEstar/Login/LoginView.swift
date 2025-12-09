//
//  LoginView.swift
//  App_BemEstar
//
//  Created by user288578 on 12/8/25.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUser = 0
    @State private var wrongPass = 0
    @State private var showLoginScreen = false
    
    //@available(*, deprecated: )
    var body: some View {
        NavigationStack{
            ZStack {
                Color.mint
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.5))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white.opacity(0.7))
                
                VStack {
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200, height: 200)
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongUser))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongPass))
                    
                    
                    Button("Login") {
                        authenticateUser(username: username, password: password)
                    }.foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.teal)
                        .cornerRadius(30)
                    
                    NavigationLink(
                        destination: ContentView(),
                        isActive: $showLoginScreen
                    ) {
                        EmptyView()
                    }.hidden()
                }
            }
        }
        
        
        
  
        
    }
    
    func authenticateUser(username: String, password: String) {
        guard let user = mockUsers.first(where: { $0.username == username }) else {
            wrongUser = 2
            return
        }
        wrongUser = 0
        let hashedAttempt = LoginType.sha256(password)
        if hashedAttempt == user.passwordHash {
            wrongPass = 0
            showLoginScreen = true
        } else {
            wrongPass = 2
        }
    }
}

#Preview {
    LoginView()
}
