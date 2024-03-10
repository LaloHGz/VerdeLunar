//
//  ContentView.swift
//  VerdeLunar
//
//  Created by Alumno on 09/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let purplePeriwinkle = Color(red: 203/255, green: 189/255, blue: 242/255).opacity(0.7)
        
        VStack{
            ZStack{
                purplePeriwinkle
                        .ignoresSafeArea(.all)
                VStack(spacing: 20) {
                        Image(systemName: "scissors.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                    
                        Text("¿Cómo crear una Toalla de Tela?")
                            .multilineTextAlignment(.center)
                        .foregroundStyle(.black)
                        .font(.system(size: 20, weight: .bold))
                        .frame(width: 250)
                    
                }

            }
            .frame(height: 300)
            Spacer()
            VStack {
                Text("Materiales:\n1. Tela( Franela Americana, Algodón, Percal, Piqué, Camisero) \n2. Relleno (Franela) \n3. Tela impermeable \n4. Broches")
                    .frame(width: 350)
                
                
                Spacer()
            }
            
            
        }

        
    }
        
    
}

#Preview {
    ContentView()
}
