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
                    VStack{
                        Spacer().frame(height:0)
                        Text("BBVA")
                            .foregroundColor(.white)
                            .font(.custom("Helvetica Neue", size: 20))
                            .bold()
                            .padding(.bottom, 30)
                        Spacer().frame(height:10)
                        Image("rc_user1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height / 2)
                // Bottom half with white background
                ZStack{
                    Color.white
                    Text("Bottom Half Text")
                        .foregroundColor(.black)
                        .font(.title)
                        .bold()
                }
                .frame(width: geometry.size.width, height: geometry.size.height / 2)
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        
    }
}


#Preview {
    SecondView()
}
