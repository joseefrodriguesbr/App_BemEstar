//
//  DataSourceMock.swift
//  App_BemEstar
//
//  Created by user288578 on 12/7/25.
//

import Foundation

let servicesMock: [ServiceType] = [
ServiceType(id: 1, nome: "Exercitar", imagem: "exercicio"),
ServiceType(id: 2, nome: "Meditar", imagem: "medit"),
ServiceType(id: 3, nome: "Alongamento", imagem: "alongamento"),
ServiceType(id: 4, nome: "Coffee time", imagem: "coffee"),
ServiceType(id: 5, nome: "Pausa 5min", imagem: "conversa"),
ServiceType(id: 6, nome: "Nutricionista", imagem: "nutricionista"),
]



let carouselMock: [ServiceType] = [
    ServiceType(id: 1, nome:"Bora!",imagem: "motivacional1"),
    ServiceType(id: 2, nome: "Hoje eh dia",imagem: "motivacional2"),
    ServiceType(id: 3, nome: "Bom dia!",imagem: "motivacional3"),
    ServiceType(id: 4, nome:"Hora do cafe",imagem: "coffee"),]


let goalMock: [GoalType] = [
    GoalType(id: 1, icone: "moon.zzz.fill", titulo:"Descanso", descricao: "Dormir 8h por noite"),
    GoalType(id: 2, icone: "hare.fill", titulo:"Exercicio", descricao: "Correr 5km duas vezes na semana"),
    GoalType(id: 3, icone: "goforward.60", titulo:"Redes sociais", descricao: "Usar o celular porapenas 1h")
]
