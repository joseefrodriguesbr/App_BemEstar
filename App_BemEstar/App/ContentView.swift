//
//  ContentView.swift
//  App_BemEstar
//
//  Created by user288578 on 12/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar().padding(.horizontal,15)
            
            ScrollView(.vertical,
                       showsIndicators: false){
                VStack{
                    Features_Grid()
                    CarouselTabView()
                    GoalContainer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
