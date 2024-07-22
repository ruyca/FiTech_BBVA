//
//  CuentaView.swift
//  LoginScreenUI
//
//  Created by Ruy Cabello on 17/07/24.
//

import SwiftUI

struct CuentaView: View {
    var body: some View {
        
        NavigationStack {
            GeometryReader { geo in
                ZStack{
                    Image("bg_05")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        .opacity(1.0)
                    
                    // Main VStack
                    VStack {
                        (Text("Cuenta  •")
                            .foregroundColor(.white)
                            .font(.custom("Helvetica Neue", size: 16))
                            .fontWeight(.light) +
                        Text("1382")
                            .foregroundColor(.white)
                            .font(.custom("Helvetica Neue", size: 16))
                            .fontWeight(.light)
                            .italic()
                        ) // Adds padding to the sum of Text
                        //Spacer()
                        ScrollView {
                            // Two Rectangles
                            VStack(spacing: 10) {
                                // First Rectangle
                                ZStack {
                                    Rectangle()
                                        .fill(Color.white)
                                        .frame(width: geo.size.width - 40, height: 160)
                                        .shadow(radius: 5)
                                    
                                    VStack {
                                        Text("000ABCD1382")
                                            .bold()
                                            .font(.custom("Helvetica Neue", size: 18))
                                            .padding(.top)
                                            .foregroundColor(.black)
                                        Spacer()
                                        Text("$27,850")
                                            .font(.custom("Helvetica Neue", size: 30))
                                            .foregroundColor(.black)
                                        Text("Saldo disponible")
                                            .font(.custom("Helvetica Neue", size: 14))
                                            .foregroundColor(.gray)
                                            .padding(.bottom)
                                        Text("Ver cuenta y CLABE")
                                            .font(.custom("Helvetica Neue", size: 18))
                                            .foregroundColor(CustomColors.myDarkBlue)
                                            .bold()
                                            .padding(.bottom)
                                    }
                                }
                                // End of first Rect
                                
                                // Second Rectangle
                                ZStack {
                                    Rectangle()
                                        .fill(Color.white)
                                        .frame(width: geo.size.width - 40, height: 135)
                                        .shadow(radius: 5)
                                    
                                    VStack {
                                        HStack {
                                            Image(systemName: "wallet.pass.fill")
                                                .foregroundColor(CustomColors.myDarkBlue)
                                            Text("Total de apartados")
                                                .bold()
                                                .font(.custom("Helvetica Neue", size: 17))
                                                .foregroundColor(.black)
                                        }
                                        Text("$12,345.56")
                                            .foregroundColor(.black)
                                        
                                        HStack(spacing: 50) {

                                            Text("Ver apartados")
                                                .bold()
                                                .font(.custom("Helvetica Neue", size: 17))
                                                .foregroundColor(CustomColors.myDarkBlue)
                                            
                                            VStack {
                                                Image(systemName: "arkit")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 25, height: 25)
                                                    .foregroundColor(.black)
                                                (Text("Visualizar ")
                                                    .foregroundColor(.white)
                                                    .font(.custom("Helvetica Neue", size: 15))
                                                    .fontWeight(.regular) +
                                                 Text("(nuevo)")
                                                    .foregroundColor(.yellow)
                                                    .font(.custom("Helvetica Neue", size: 15))
                                                    .fontWeight(.bold)
                                                    .italic())
                                                .padding(10)
                                                .background(Color.blue)
                                                .cornerRadius(10)
                                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                            }
                                        }
                                    }
                                }
                                // End of second Rect

                            }
                            // End of VStack w rects
                            
                            // blue ribbon with images and text
                            ZStack {
                                Rectangle()
                                    .frame(width: geo.size.width, height: 90)
                                    .padding(.top, 5)
                                    .foregroundColor(CustomColors.myLightBackgroundBlue)
                                
                                HStack(spacing: 40) {
                                    VStack {
                                        Image(systemName: "arrow.left.arrow.right")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(.white)
                                        Text("Transferir")
                                            .font(.custom("Helvetica Neue", size: 14))
                                            .foregroundColor(.white)
                                    }
                                    VStack {
                                        Image(systemName: "tag.fill")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(.white)
                                        Text("Pagar\n servicios")
                                            .font(.custom("Helvetica Neue", size: 14))
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.center)
                                    }
                                    VStack {
                                        Image(systemName: "iphone.gen2")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 20, height: 20)
                                            .foregroundColor(.white)
                                            .padding(.bottom, 5)
                                        Text("Retiro\n sin tarjeta")
                                            .font(.custom("Helvetica Neue", size: 14))
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.center)
                                    }
                                    VStack {
                                        Image(systemName: "ellipsis")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 10, height: 10)
                                            .foregroundColor(.white)
                                        Text("12 más")
                                            .font(.custom("Helvetica Neue", size: 14))
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            // expenses made "ULTIMOS MOVIMIENTOS"
                            VStack{
                                HStack{
                                    Text("ÚLTIMOS MOVIMIENTOS")
                                        .font(.custom("Helvetica Neue", size:12))
                                        .foregroundStyle(.black)
                                        .padding(.top, 5)
                                        .padding(.horizontal, 20)
                                        .bold()
                                    Spacer()
                                }
                                HStack{
                                    Text("21 julio 2024")
                                        .font(.custom("Helvetica Neue", size:12))
                                        .foregroundStyle(.black)
                                        .italic()
                                        .padding(.top, 5)
                                        .padding(.horizontal, 40)
                                    Spacer()
                                }
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$551")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$111")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$232")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$428,111")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$5,142")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$381")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$551")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$12,341")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$123")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$10,231")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$230")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$40")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$1,551")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$13,002")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$551")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$551")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                
                                VStack{
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Pago Cuenta de Tercero")
                                                .font(.custom("Helvetica Neue", size:14))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                                .bold()
                                            Text("Movimiento BBVA")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal, 20)
                                        Spacer()
                                        Text("$551")
                                            .padding(.horizontal, 20)
                                            .foregroundStyle(.black)
                                    }
                                }.padding(.top, 10)
                                

                            }
                            

                        }
                        // End of ScrollView
                    }
                    // End of Main VStack
                }
            }
        }
    }
}

#Preview {
    CuentaView()
}
