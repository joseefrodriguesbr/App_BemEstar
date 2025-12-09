//
//  NavigationBar.swift
//  App_BemEstar
//
//  Created by user288578 on 12/7/25.
//



import SwiftUI

struct NavigationBar: View {
    @State private var nomeAtual: String = "Daniel Mosca"
    @State private var nomes: [String] = ["Daniel Mosca","Abel Ferreira", "Joel Santana"]
    @State private var showAlert: Bool = false
    @State private var nomeNovo: String = ""
    
    var body: some View {
        HStack{
        Menu{
            ForEach(nomes, id: \.self){
                nome in
                Button(nome)
                {
                    nomeAtual = nome
                }
            }
        }label: {
            Text(nomeAtual)
                .font(.headline)
                .fontWeight(.bold)
        }
            
Button(
    action: {showAlert = true}){
        Image(systemName: "plus.circle.fill")
            .font(.title3)
            .foregroundStyle(.gray)
    }.sheet(isPresented: $showAlert) {
    VStack {
        Text("Adicionar novo nome").font(.headline)
        
        TextField("Digite o nome", text: $nomeNovo)
            .textFieldStyle(RoundedBorderTextFieldStyle())
        
        HStack {
            Button("Cancelar") {
                showAlert = false
                nomeNovo = ""
            }
            .foregroundStyle(.red)
            
            Button("Adicionar") {
                if !nomeNovo.isEmpty {
                    nomes.append(nomeNovo)
                    nomeAtual = nomeNovo
                    nomeNovo = ""
                    showAlert = false
                }
            }
            .foregroundStyle(.blue)
        }
    }
    .presentationDetents([.fraction(0.2)])
    .padding()
}




        }
    }
}

#Preview {
    NavigationBar()
}
