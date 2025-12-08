//
//  FeatureType.swift
//  App_BemEstar
//
//  Created by user288578 on 12/7/25.
//

import SwiftUI

struct FeatureType: View {
let service: ServiceType
    var body: some View {
        VStack(spacing:5)
        {
            Image(service.imagem).resizable().scaledToFit()
                .cornerRadius(20)
                .fixedSize(horizontal: false,
                           vertical: true)
            
            Text(service.nome)
                .font(.system(size: 20))
            
            }.frame(width: 80, height:80)
    }
}
#Preview {
    FeatureType(
        service:ServiceType(id: 1,
                            nome:"Exercitar",
                            imagem:"exercicio"))
}
