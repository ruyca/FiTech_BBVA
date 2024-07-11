//
//  SecondView.swift
//  LoginScreenUI
//
//  Created by Ruy Cabello on 07/07/24.
//

import Foundation
import SwiftUI

struct SecondView: View{
    var body: some View{
        GeometryReader{ geometry in
            VStack(spacing: 0){
                // Top half with transparent image
                ZStack{
                    Image("torre_bbva2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height / 2)
                        .clipped()
                        .opacity(0.9)
                    VStack(spacing: 0){
                        //Spacer().frame(height:0)
                        Text("BBVA")
                            .foregroundColor(.white)
                            .font(.custom("Helvetica Neue", size: 20))
                            .bold()
                            .padding(.top, 40)
                        Spacer().frame(height:0)
                        Image("rc_user1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                        Text("Hola Ruy")
                            .foregroundColor(.white)
                            .font(.custom("Helvetica Neue", size:14))
                        //Spacer().frame(height:20)
                        Text("Cambiar usuario")
                            .foregroundColor(CustomColors.myLightBlue)
                        Button("Iniciar sesión"){
                            
                        }
                        .foregroundColor(.white)
                        .frame(width:170, height: 50)
                        .background(CustomColors.myLightBackgroundBlue)
                        .padding(.bottom, 40)
                        .padding(.top, 10)
                        // Images with the text
                        HStack(alignment: .top, spacing:45){
                            VStack{
                                Image("security")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:30, height:30)
                                Text("Token Móvil")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }
                            VStack{
                                Image("qr-code")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:30, height:30)
                                Text("Operación QR +\n         CoDi")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }
                            VStack{
                                Image("communication-2")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:30, height:30)
                                Text("Emergencias")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height / 2)
                // Bottom half with white background
                ZStack{
                    Color.black
                        .frame(width: geometry.size.width, height: geometry.size.height / 2)
                    Image("bottom-image")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height / 2)
                        .clipped()
                }
                .frame(width: geometry.size.width, height: geometry.size.height / 2)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        
    }
}


#Preview {
    SecondView()
}
