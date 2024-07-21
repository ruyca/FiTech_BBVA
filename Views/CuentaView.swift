//
//  CuentaView.swift
//  LoginScreenUI
//
//  Created by Ruy Cabello on 17/07/24.
//

import SwiftUI

struct CuentaView: View {
    var body: some View {
        
        NavigationStack{
            GeometryReader { geo in
                ZStack(alignment: .top){
                    // Background
                    Rectangle()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: geo.size.width, height: 60)
                        .foregroundStyle(CustomColors.myDarkBlue)
                        

                    
                        // Main VStack
                        VStack{
                            
                            (Text("Cuenta  •")
                                .foregroundStyle(.white)
                                .font(.custom("Helvetica Neue", size: 20))
                                .fontWeight(.light) +
                            Text("1382")
                                .foregroundStyle(.white)
                                .font(.custom("Helvetica Neue", size: 20))
                                .fontWeight(.light)
                                .italic()
                            ).padding(.all, 20) // Adds padding to the sum of Text
                            
                        ScrollView{
                            
                            // Two Rectangles
                            VStack(spacing:10){
                                //Text("") // Dont remove... It just works
                                
                                // First Rectangle
                                ZStack{
                                    Rectangle()
                                        .fill(Color.white)
                                        .frame(width: geo.size.width - 40, height: 200)
                                        .shadow(radius: 5)
                                    
                                    VStack{
                                        Text("000ABCD1382")
                                            .bold()
                                            .font(.custom("Helvetica Neue", size: 20))
                                            .padding()
                                            .foregroundStyle(.black)
                                        Spacer()
                                        Text("$27,850")
                                            .font(.custom("Helvetica Neue", size: 40))
                                            .foregroundStyle(.black)
                                        Text("Saldo disponible")
                                            .font(.custom("Helvetica Neue", size: 14))
                                        .foregroundStyle(.gray)
                                        .padding(.bottom)
                                        
                                        Text("Ver cuenta y CLABE")
                                            .font(.custom("Helvetica Neue", size: 18))
                                            .foregroundStyle(CustomColors.myDarkBlue)
                                            .bold()
                                            .padding()
                                    }
                                }
                                // End of first Rect
                                
                                // Second Rectangle
                                ZStack{
                                    Rectangle()
                                        .fill(Color.white)
                                        .frame(width: geo.size.width - 40, height: 150)
                                        .shadow(radius: 5)
                                    
                                    VStack{
                                        
                                        HStack{
                                            Image(systemName: "wallet.pass.fill")
                                                .foregroundColor(CustomColors.myDarkBlue)
                                            Text("Total de apartados")
                                                .bold()
                                                .font(.custom("Helvetica Neue", size:17))
                                        }
                                        Text("$12,345.56")
                                        
                                        HStack(spacing:50){
                                            Text("Ver apartados")
                                                .bold()
                                                .font(.custom("Helvetica Neue",size:17))
                                                .foregroundStyle(CustomColors.myDarkBlue)
                                            
                                            VStack{
                                                Image(systemName: "arkit")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width:25, height:25)
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
                            ZStack{
                                Rectangle()
                                    .frame(width:geo.size.width, height:90)
                                    .padding(.top, 5)
                                    .foregroundStyle(CustomColors.myLightBackgroundBlue)
                                
                                HStack(spacing:40){
                                    VStack{
                                        Image(systemName: "arrow.left.arrow.right")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(.white)
                                        Text("Transferir")
                                            .font(.custom("Helvetica Neue", size: 14))
                                            .foregroundColor(.white)
                                    }
                                    VStack{
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
                                    VStack{
                                        Image(systemName: "iphone.gen2")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 20, height: 20)
                                            .foregroundColor(.white)
                                            .padding(.bottom,5)
                                        Text("Retiro\n sin tarjeta")
                                            .font(.custom("Helvetica Neue", size: 14))
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.center)

                                    }
                                    VStack{
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
                            
                            Text("helppppppppppppppppppppp")
                            
                            
                            
                        }
                        // End of Main VStack
                    }
                    // End of ScrollView
                    
                }
                
            }
            
            
            
            
            
        }
        
        
        
    }
}

#Preview {
    CuentaView()
}

