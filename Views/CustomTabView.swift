//
//  CustomTabView.swift
//  LoginScreenUI
//
//  Created by Ruy Cabello on 20/07/24.
//

import SwiftUI

enum Tab: String, CaseIterable{
    case house
    case heart
    case plus
    case tray
    case person
}

struct CustomTabView: View {
    
    @Binding var selectedTab: Tab
    private var fillimage: String{
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        
        VStack{
            HStack{
                ForEach(Tab.allCases, id: \.rawValue){tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillimage: tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25: 1.0)
                        .foregroundColor(selectedTab == tab ? .blue : .black)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)){
                                selectedTab = tab
                            }
                        }
                    Spacer()
                    
                }
            }
            .frame(width: 400, height:60)
            .background(.white)
            .cornerRadius(10)
            
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}




#Preview {
    CustomTabView(selectedTab: .constant(.house))
}
