//
// NavigationBar.swift
// App_BemEstar
//
// Created by user288578 on 12/7/25.
//

import SwiftUI

struct NavigationBar: View {
    @Environment(UserMock.self) var userMock

    @State private var showAlert: Bool = false
    @State private var nomeNovo: String = ""
    @State private var senhaNova: String = ""
    
    var body: some View {
        HStack {
            Menu {
                // Ler usuario a partir de userMock
                ForEach(userMock.mockUsers) { user in
                    Button(user.username) {
                        // Altera o usuário atual no UserMock
                        userMock.currentUsername = user.username
                    }
                }
            } label: {
                // Exibe o nome do usuário atual
                Text(userMock.currentUsername)
                    .font(.headline)
                    .fontWeight(.bold)
            }
            
          //  Spacer()
            
            Button(action: { showAlert = true }) {
                Image(systemName: "plus.circle.fill")
                    .font(.title3)
                    .foregroundStyle(.gray)
            }
            .sheet(isPresented: $showAlert) {
                VStack(spacing: 15) {
                    Text("Adicionar novo usuário").font(.headline)
                    
                    // Input para o Nome de Usuário
                    TextField("Nome de Usuário", text: $nomeNovo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    // Input para a Senha
                    SecureField("Senha", text: $senhaNova)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    HStack {
                        Button("Cancelar") {
                            showAlert = false
                            nomeNovo = ""
                            senhaNova = ""
                        }
                        .foregroundStyle(.red)
                        
                        Spacer()
                        
                        Button("Adicionar") {
                            // Adiciona o novo usuário na lista do UserMock
                            if !nomeNovo.isEmpty && !senhaNova.isEmpty {
                                
                                let newUser = LoginType(username: nomeNovo, password: senhaNova)
                                userMock.mockUsers.append(newUser)
                                
                                // Define o novo usuário como o atual
                                userMock.currentUsername = nomeNovo
                                
                                nomeNovo = ""
                                senhaNova = ""
                                showAlert = false
                            }
                        }
                        .foregroundStyle(.blue)
                    }
                }
                .presentationDetents([.fraction(0.3)])
                .padding()
            }
        }
    }
}

#Preview {
    NavigationBar()
        .environment(UserMock())
}
