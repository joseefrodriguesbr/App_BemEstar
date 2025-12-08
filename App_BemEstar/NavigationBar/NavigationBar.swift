//
//  NavigationBar.swift
//  App_BemEstar
//
//  Created by user288578 on 12/7/25.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Button("Jose Rodrigues"){}
                .font(.headline)
                .fontWeight(.bold)
            
            Button(action: {}){
                Image(systemName:
                        "person.badge.plus.fill")
                .font(.title3)
                .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    NavigationBar()
}
