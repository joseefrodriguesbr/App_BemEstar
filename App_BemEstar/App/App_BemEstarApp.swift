//
//  App_BemEstarApp.swift
//  App_BemEstar
//
//  Created by user288578 on 12/7/25.
//
import SwiftUI

@main
struct App_BemEstarApp: App {

    //Referencia a userMock
    @State private var userMock = UserMock()

    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(userMock)
        }
    }
}
