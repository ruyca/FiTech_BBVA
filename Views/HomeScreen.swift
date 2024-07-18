import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationStack {
            
            GeometryReader { geo in
                ZStack {
                    // Background
                    Image("MainBackground")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        .opacity(1.0)
                    
                    ScrollView {
                        
                        VStack {
                            
                            HStack {
                                Spacer().frame(width:150)
                                Text("Hola, Ruy")
                                    .foregroundColor(.white)
                                    .font(.custom("Helvetica Neue", size: 14))
                                    .fontWeight(.light)
                                Spacer()
                                Image("question")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 25, height: 25)
                                Spacer().frame(width: 20) // Padding between images
                                Image("menu")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 25, height: 25)
                            }
                            .padding()
                            
                            HStack(spacing:35) {
                                VStack{
                                    Image("two-arrows")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 30, height: 30)
                                    Text("Transferir")
                                        .foregroundColor(.white)
                                        .font(.custom("Helvetica Neue", size: 16))
                                }
                                
                                VStack{
                                    Image("plus")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 30, height: 30)
                                    Text("Oportunidades")
                                        .foregroundColor(.white)
                                        .font(.custom("Helvetica Neue", size:16))
                                        .multilineTextAlignment(.center)
                                        
                                }
                                
                                VStack{
                                    Image("notification-with-dollar-sign")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 30, height: 30)
                                    Text("Retiro sin tarjeta")
                                        .foregroundColor(.white)
                                        .font(.custom("Helvetica Neue", size:16))
                                        .multilineTextAlignment(.center)

                                    
                                }
                                
                                VStack{
                                    Image("more")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 30, height: 30)
                                    Text("Más")
                                        .foregroundColor(.white)
                                        .font(.custom("Helvetica Neue", size:16))
                                }
                                
                            }
                            .padding()
                            
                            /// RECTANGLES AND STUFF
                            
                            VStack(spacing: 20) {
                            /// FIRST RECTANGLE
                                ZStack{
                                    Rectangle()
                                        .fill(Color.white)
                                        .frame(width: geo.size.width - 50, height: 100)
                                        .shadow(radius: 5)
                                    
                                    VStack(alignment:.leading){
                                        Text("CUENTAS EN PESOS")
                                            .bold()
                                            .font(.custom("Helvetica Neue", size: 15))
                                            .foregroundColor(.gray)
                                            .padding(.top, -5)
                                        //Spacer()
                                        Divider()
                                            .foregroundColor(.gray)
                                            .frame(width: geo.size.width - 80)
                                        
                                        NavigationLink(destination: CuentaView()){
                                            HStack(spacing:160){
                                                Text("000ABCD1382")
                                                    .font(.custom("Helvetica Neue", size:15))
                                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                                    .bold()
                                                Text("$7,850")
                                                    .font(.custom("Helvetica Neue", size:15))
                                                    .foregroundColor(.black)
                                            }
                                        }
                                        
                                        NavigationLink(destination: CuentaView()){
                                            HStack(spacing:190){
                                                Text("•1382")
                                                    .font(.custom("Helvetica Neue", size:12))
                                                    .fontWeight(.light)
                                                    .foregroundColor(.black)
                                                
                                                Text("Saldo disponible")
                                                    .font(.custom("Helvetica Neue", size: 12))
                                                    .fontWeight(.light)
                                                    .foregroundColor(.gray)
                                            }
                                        }
                                        
                                        
                                /// END OF VSTACK
                                    }
                                    
                            /// END OF FIRST RECT
                                }
                                
                            /// SECOND RECTANGLE
                                ZStack{
                                    Rectangle()
                                        .fill(Color.white)
                                        .frame(width: geo.size.width - 50, height: 200)
                                        .shadow(radius: 5)
                                }
                            }
                            .padding(.top, 50) // Adjusts the VStack further down
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true) // Hides the default back button
    }
}

#Preview {
    HomeScreen()
}
