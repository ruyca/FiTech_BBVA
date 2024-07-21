import SwiftUI

struct HomeScreen2: View {
    
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
                                            HStack(spacing:135){
                                                Text("000ABCD1382")
                                                    .font(.custom("Helvetica Neue", size:15))
                                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                                    .bold()
                                                Text("$27,850")
                                                    .font(.custom("Helvetica Neue", size:20))
                                                    .foregroundColor(.black)
                                                    .fontWeight(.light)
                                            }
                                        }
                                        
                                        NavigationLink(destination: CuentaView()){
                                            HStack(spacing:190){
                                                Text("•1382")
                                                    .font(.custom("Helvetica Neue", size:12))
                                                    .fontWeight(.light)
                                                    .foregroundColor(.black)
                                                    .italic()
                                                
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
                                        .frame(width: geo.size.width - 50, height: 310)
                                        .shadow(radius: 5)
                                    
                                    // FIRST CREDIT CARD
                                    VStack(alignment: .leading){
                                        Text("TARJETAS")
                                            .bold()
                                            .font(.custom("Helvetica Neue", size: 15))
                                            .foregroundColor(.gray)
                                            .padding(.top, -5)
                                        Divider()
                                            .foregroundColor(.gray)
                                            .frame(width: geo.size.width - 80)
                                        // "TC234"
                                        HStack{
                                            Text("Tc4391")
                                                .font(.custom("Helvetica Neue", size:18))
                                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                                .bold()
                                        }
                                        
                                        // Card image with text and money
                                        HStack(spacing:174){
                                            Image("bbva_azul")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width:35, height:35)
                                                .padding(.horizontal, 10)
                                            
                                            VStack(alignment: .trailing){
                                                Text("$30,045")
                                                    .font(.custom("Helvetica Neue", size:20))
                                                    .foregroundColor(.black)
                                                    .fontWeight(.light)
                                                
                                                Text("Crédito disponible")
                                                    .font(.custom("Helvetica Neue", size: 10))
                                                    .foregroundColor(.gray)
                                            }
                                        }
                                        
                                        HStack(spacing:211){
                                            Text("•4391")
                                                .font(.custom("Helvetica Neue", size:12))
                                                .fontWeight(.light)
                                                .foregroundColor(.black)
                                                .italic()
                                            
                                            VStack(alignment: .trailing){
                                                Text("$14,754")
                                                    .font(.custom("Helvetica Neue", size:15))
                                                    .foregroundColor(.black)
                                                    .fontWeight(.light)
                                                
                                                Text("Saldo utilizado")
                                                    .font(.custom("Helvetica Neue", size: 10))
                                                    .foregroundColor(.gray)
                                            }
                                        }
                                        
                                        
                                        /// SECOND DEBIT CARD
                                        HStack(spacing:180){
                                            Text("Visa Débito")
                                                .font(.custom("Helvetica Neue", size:18))
                                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                                .bold()
                                            
                                            Image("mobile-payment")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 15, height: 15)
                                        }
                                        .padding(.top, 20) // pading to HStack for the visa deb
                                        
                                        Image("visa_debito")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width:35, height:35)
                                            .padding(.horizontal, 12)
                                        
                                        Text("•2070")
                                            .font(.custom("Helvetica Neue", size:12))
                                            .fontWeight(.light)
                                            .foregroundColor(.black)
                                            .italic()
                                        
                                    }
                                }
                            }
                            .padding(.top, 50) // Adjusts the VStack further down
                        }
                        
                    // end of Scroll View
                    }
                    

                }
            }
        }
        .navigationBarBackButtonHidden(true) // Hides the default back button
        
        
        
        
    }
}

#Preview {
    HomeScreen2()
}
