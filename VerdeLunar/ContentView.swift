//
//  ContentView.swift
//  VerdeLunar
//
//  Created by Alumno on 09/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack{
                Color.red
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.8)
                    .ignoresSafeArea(.all)
                    /*.resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.8)
                    .edgesIgnoringSafeArea(.all)
                     */
                VStack {
                    Image("toalla-tela")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .padding(.bottom, 10)
                    Text("¿Cómo crear una Toalla de Tela?")
                        .foregroundStyle(.white)
                    
                }
                    
                
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    ContentView()
}
