//
//  HomeButtonView.swift
//  iOSAppTemplate
//
//  Created by Alex Ramos on 13/06/22.
//

import SwiftUI

struct HomeButtonView: View {
    var imageName = ""
    //componente que recibe el nombre de la imagen y crea en base a eso al boton
    var body: some View {
        VStack {
            Button {
                print(imageName)
            }  label: {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(maxWidth: 80, maxHeight:80)
        }
    }
}

struct HomeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButtonView(imageName: "dislike-button")
    }
}
