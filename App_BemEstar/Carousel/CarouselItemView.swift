//
//  CarouselItemView.swift
//  App_BemEstar
//
//  Created by user288578 on 12/8/25.
//

import SwiftUI

struct CarouselItemView: View
{ let banner: ServiceType
    var body: some View {
        VStack{
            Image(banner.imagem)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
            
            Text(banner.nome).font(.caption)
        }

    }
}
#Preview
{
    CarouselItemView(banner:
        ServiceType(
            id: 1,nome: "Teste",imagem:"motivacional1"))
}
