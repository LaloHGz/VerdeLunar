//
//  Login.swift
//  VerdeLunar
//
//  Created by Alumno on 10/03/24.
//

import SwiftUI


struct Login: View {
    
    let purplePeriwinkle = Color(red: 203/255, green: 189/255, blue: 242/255).opacity(0.9)
            let blueColumbia = Color(red: 196/255, green: 229/255, blue: 251/255).opacity(0.9)
            let yellowChampagne = Color(red: 240/255, green: 179/255, blue: 86/255).opacity(0.9)
            let blueColumbiaStrong = Color(red: 13/255, green: 120/255, blue: 191/255).opacity(0.9)
            let yellowChampagneStrong = Color(red: 237/255, green: 162/255, blue: 49/255).opacity(0.9)
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLogged: Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                Image(systemName: "moon.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .foregroundColor(purplePeriwinkle)
                    .padding(.top, 50)
                
                HStack {
                    
                    Text("\n**Bienvenida**")
                        .font(.system(size: 22))
                        .frame(width: 310, alignment: .leading)
                }
                .padding(-10)
                
                HStack{
                    Text("Con tu ayuda estamos logrando **más**")
                        .font(.system(size: 30))
                        .padding(.trailing)
                }
                .padding(20) // Modificado a 30
                
                TextField("Usuario", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 30)
                
                
                SecureField("Contraseña", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 30)
                
                
                Button(action: {
                    // Aquí deberías implementar la lógica de autenticación
                    // Por simplicidad, aquí simplemente marcaremos como iniciada la sesión
                    self.isLogged = true
                }) {
                    Text("Ingresar")
                        .font(.system(size: 19))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding()
                        .background(blueColumbia)
                        .cornerRadius(10)
                        .padding(.horizontal, 30)
                }
                .padding(20)
                
                if isLogged {
                   
                }
                
                Spacer()
                
                VStack {
                    Text("¡Únete para ser parte del **cambio**!")
                        .font(.system(size: 19))
                        .foregroundColor(.gray)
                    
                        Spacer()
                    
                    Button(action: {
                        // Aquí deberías implementar la lógica para el registro
                    }) {
                        Text("Regístrate")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(blueColumbiaStrong)
                    }
                    
                    
                }
                .padding(.bottom, 30)
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
