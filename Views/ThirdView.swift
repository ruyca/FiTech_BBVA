import SwiftUI
import LocalAuthentication

struct ThirdView: View {
    @State private var isUnlocked = false
    @State private var text = "LOCKED"
    
    var body: some View {
        NavigationStack {
            ZStack {
                CustomColors.myDarkBlue.ignoresSafeArea()
                VStack(spacing: 50) {
                    Text("BBVA")
                        .foregroundColor(.white)
                        .font(.custom("Helvetica Neue", size: 25))
                        .bold()
                        .padding(.top, 40)
                    Text("Hola Ruy")
                        .foregroundColor(.white)
                        .font(.custom("Helvetica Neue", size: 20))
                        .fontWeight(.light)
                    VStack {
                        Image("face-id")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                        Button("Entrar con huella facial") {
                            authenticate()
                        }
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.custom("Helvetica Neue", size: 15))
                    }
                    HStack(spacing: 10) {
                        Image("key")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 25, height: 25)
                        Text("Usar contraseña")
                            .foregroundColor(.white)
                            .font(.custom("Helvetica Neue", size: 15))
                    }
                    Spacer() // Add this Spacer to push content to the top
                }
                .navigationDestination(isPresented: $isUnlocked) {
                    HomeScreen() 
                }
            }
        }
    }
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "We need to unlock your data."
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticateError in
                if success {
                    DispatchQueue.main.async {
                        self.isUnlocked = true
                    }
                } else {
                    // There was a problem
                }
            }
        } else {
            // no biometrics
        }
    }
}

#Preview {
    ThirdView()
}
