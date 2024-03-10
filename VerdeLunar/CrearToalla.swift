//
//  CrearToalla.swift
//  VerdeLunar
//
//  Created by Alumno on 10/03/24.
//

import SwiftUI

struct CrearToalla: View {
    var body: some View {
        
        let purplePeriwinkle = Color(red: 203/255, green: 189/255, blue: 242/255).opacity(0.9)
        /*let blueColumbia = Color(red: 196/255, green: 229/255, blue: 251/255).opacity(0.9)
        let yellowChampagne = Color(red: 240/255, green: 179/255, blue: 86/255).opacity(0.9)
        let blueColumbiaStrong = Color(red: 13/255, green: 120/255, blue: 191/255).opacity(0.9)
        let yellowChampagneStrong = Color(red: 237/255, green: 162/255, blue: 49/255).opacity(0.9)
         */
        
        let lessonNames = ["Elige la tela para la capa", "Relleno", "Tela de cobertura", "Molde", "Traza y rellena", "Cose" ]
        
        let lessonDesc = ["La primera (que tendrá contacto con tu piel) debe ser de franela americana, algodón, percal o pique. Medio metro de tela es suficiente para varias toallas.", "Por lo general, se hace con franela no tratada. La tela de toalla o jersey también son buenas opciones. Hay mujeres que prefieren la microfibra por su poder de absorción. Dependiendo de tu flujo deberás elegir el número de capas; alrededor de seis para una toalla regular y 15 para una de noche.", "Necesitarás una tela impermeable, la cual tendrá contacto con tu piel. Es importante que sea impermeable para evitar los olores.", "Al hacer clic en este paso, podrás hacer uso del molde a través de Realidad Aumentada con tu teléfono.", "Haz el trazo sobre las telas que te mencionamos anteriormente y con alfileres detén las orillas para que puedas rellenar la figura.", "Una vez que está todo fijo comienza a coser las orillas de la figura y en la zona trasera no olvides colocar un broche o pegar un velcro para que puedan unirse las alas y se mantenga fija tu toalla a la ropa interior."]
        
        VStack{
            ZStack{
                purplePeriwinkle
                        .ignoresSafeArea(.all)
                VStack(spacing: 20) {
                        Image(systemName: "scissors.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            /*.foregroundStyle(
                                .linearGradient(colors: [yellowChampagne,yellowChampagneStrong ], startPoint: .leading, endPoint: .trailing))
                             */
                    
                        Text("¿Cómo crear una Toalla de Tela?")
                            .multilineTextAlignment(.center)
                        .foregroundStyle(.black)
                        .font(.system(size: 20, weight: .bold))
                        .frame(width: 250)
                    
                }

            }
        .frame(height: 300)
            .frame(height: 300)
            Spacer()
            
            ScrollView{
                VStack {
                    Text("Materiales:")
                        .font(.system(size: 17,weight: .bold))
                        .padding(10)
                    
                    Text("1. Tela( Franela Americana, Algodón, Camisero) \n2. Relleno (Franela) \n3. Tela impermeable \n4. Broches")
                        .frame(width: 500)
                        .lineSpacing(10)
                        .padding(.bottom, 20)
                    Divider()
                    
                    ForEach(0...5, id: \.self) { index in
                        HStack {
                            VStack(alignment: .leading, spacing: 5){
                                Text("\(lessonNames[index])")
                                    .padding(.top, 10)
                                Text("\(lessonDesc[index])")
                                    .font(.system(size: 13, weight: .thin))
                                    .frame(width: 300)
                            }
                            Button(action: {
                                playSound(audio: "l\(index+1)")
                                }){
                                Image(systemName: "play.circle.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .scaledToFit()
                                    .foregroundColor(.black)
                            }

                        }
                        Divider()
                    }
                    
                    Spacer()
                }
            }
            

            
            
        }

        
    }
        
    
}


#Preview {
    CrearToalla()
}
