//
//  TabMenu.swift
//  verdeLunar
//
//  Created by Alumno on 10/03/24.
//

import SwiftUI

struct TabMenu: View {
    var body: some View {
        
        let purplePeriwinkle = Color(red: 203/255, green: 189/255, blue: 242/255).opacity(0.9)
        let blueColumbia = Color(red: 196/255, green: 229/255, blue: 251/255).opacity(0.9)
        let yellowChampagne = Color(red: 240/255, green: 179/255, blue: 86/255).opacity(0.9)
        let blueColumbiaStrong = Color(red: 13/255, green: 120/255, blue: 191/255).opacity(0.9)
        let yellowChampagneStrong = Color(red: 237/255, green: 162/255, blue: 49/255).opacity(0.9)
         
        
        
        TabView {
            Home()
                .tabItem {
                    Label("Menú", systemImage: "homekit")
                }

            
            Foro()
                .tabItem {
                    Label("Foro", systemImage: "questionmark")
                }
            
           /* Text("Donaciones")
                .tabItem {
                    Label("Donaciones", systemImage: "dollarsign.arrow.circlepath")
                }*/
            
            Impacto()
                .tabItem {
                    Label("Impacto", systemImage: "globe.americas")
                }
        }.accentColor(blueColumbiaStrong)
            .navigationBarHidden(true)
        
    }
        
    
}


#Preview {
    TabMenu()
}
