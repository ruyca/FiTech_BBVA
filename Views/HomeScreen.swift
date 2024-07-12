//
//  HomeScreen.swift
//  LoginScreenUI
//
//  Created by Ruy Cabello on 11/07/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack{
            Image("yo-habia-ponido")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
            Text("Yo habia ponido el homescreen aki")
                .font(.custom("Helvetica Neue", size: 20))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
        .navigationBarBackButtonHidden(true) // Hides the default back button
    }
}

#Preview {
    HomeScreen()
}
