//
//  ContentView.swift
//  LoginScreenUI
//
//  Created by Ruy Cabello on 07/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var showingLoadingScreen = true
    
    
    
    var body: some View {
        if showingLoadingScreen{
            FirstView()
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                        showingLoadingScreen = false
                    }
            }
        }else{
            SecondView()
        }

    }
}

#Preview {
    ContentView()
}

