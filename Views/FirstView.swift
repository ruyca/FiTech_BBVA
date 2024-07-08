//
//  FirstView.swift
//  LoginScreenUI
//
//  Created by Ruy Cabello on 07/07/24.
//

import Foundation
import SwiftUI

struct FirstView: View{
    var body: some View{
        NavigationView{
            ZStack{
                CustomColors.myDarkBlue
                    .ignoresSafeArea()
                Text("BBVA")
                    .font(.custom("Helvetica Neue", size:54))
                    .fontWeight(.light)
                    .foregroundColor(.white)
            }
            .navigationBarHidden(true)
        }
    }
}
