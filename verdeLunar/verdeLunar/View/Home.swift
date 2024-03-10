//
//  Home.swift
//  verdeLunar
//
//  Created by Alumno on 10/03/24.
//

import SwiftUI

struct Home: View {
    
    // Category List View Properties
    
    @State var selectedCategory = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // Header
                VStack {
                    HStack {
                        
                        Text("\nHola, **Cristina**")
                            .font(.system(size: 22))
                            .frame(width: 330, alignment: .leading)
                    }
                    .padding(-10)
    
                    
                    HStack {
                        
                        Text("Explora cómo fluir con tu **ciclo**")
                            .font(.system(size: 35))
                            .padding(.trailing)
                        
            
                        Image(systemName: "moon.fill")
                            .imageScale(.large)
                            .padding()
                            .frame(width: 70, height: 90)
                            
                    }
                    
                    .padding(20)// Modificar a 30
                    // Category List
                    CategoryListView
                    
                    // Collection View
                    HStack {
                        Text("Espacio de **Aprendizaje**")
                            .font(.system(size: 24))
                        
                        Spacer()
                        
                       
                        
                    }
                    
                    .padding(.horizontal, 30)
                    .padding(.vertical, 15)
                    
                    // Product List
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            ForEach(productList, id: \.id) { item in
                                
                                ProductCard (product: item)
                            }
                        }
                    }
                    
                }
               
                
            }
        }
    }
    
    // Category list view
    var CategoryListView: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categoryList, id: \.id) { item in
                        Button {
                            selectedCategory = item.title
                        } label: {
                            HStack {
                                if item.title != "Todas" {
                                    Image(systemName: item.icon)
                                        .foregroundColor (selectedCategory == item.title ? .yellow : .black)
                                }
                                Text(item.title)
                            }
                            .padding() //pendiente de 20
                            .background(selectedCategory == item.title ? .black :
                                    .gray.opacity (0.1))
                            .foregroundColor(selectedCategory != item.title ? .black :
                                    .white)
                            .clipShape(Capsule())
                        }
                        
                    }
                }
                .padding(.horizontal, 30)
                
            }
            
        }
    }
    
}

#Preview {
    Home()
}


struct ProductCard: View {
    
    var product: Product
    
    var body: some View {
        ZStack {
            
            Image(systemName: product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
            ZStack {
                VStack(alignment: .leading, content: {
                    Text("\(product.name)")
                        .font(.system(size: 36, weight: .semibold))
                        //.frame(width: 140) //para que se adapte a la imagen
                    
                    Spacer() // Esto hace que no se acomode
                    
                    HStack {
                        Text ("\(product.price) minutos")
                            .font(.system(size: 24, weight: .semibold))
                        
                        Spacer()
                        if(product.iden == "0"){
                            NavigationLink(destination: CrearToalla()){
                                Image (systemName: "play")
                                    .imageScale(.large)
                                    .padding()
                                    .frame(width: 60, height: 60) // Tamaño del circulo
                                    .background(.black)
                                    .clipShape (Capsule())
                                    .foregroundColor (.white)
                            }
                        }else {
                            Image (systemName: "play")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 60, height: 60) // Tamaño del circulo
                                .background(.black)
                                .clipShape (Capsule())
                                .foregroundColor (.white)
                        }
                        
                       // .padding(.horizontal,-2) posicion del botom
                        
                    }
                    
                    .padding(.leading)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(.white.opacity (0.8))
                    .clipShape(Capsule())
                })
                
            }
            .padding (30)
            .frame(width: 336, height: 422)
            
        }
        
       
        .padding(30)
        .frame(width:336, height:422)
        .background(product.color.opacity(0.14)) // Opacidad del color
        .clipShape(.rect (cornerRadius: 57))
        .padding(.leading, 20)
    }
}
