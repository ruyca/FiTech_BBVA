//
//  HealthView.swift
//  LoginScreenUI
//
//  Created by Ruy Cabello on 20/07/24.
//


// SECCION DE ANA

import SwiftUI

struct HealthView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack{
                // Background
                Image("MainBackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .opacity(1.0)
                // end of background
                
                Rectangle()
                    .frame(width: 300, height: 200)
                    .foregroundColor(.black)
                
                Text("PARTE ANA")
                    .font(.custom("Helvetica", size: 30))
                    .foregroundColor(.white)
                    .bold()
                
                
                
            }
            
        }
        
        
        
        
    }
}

#Preview {
    HealthView()
}
