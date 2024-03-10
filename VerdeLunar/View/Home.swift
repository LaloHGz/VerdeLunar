//
//  Home.swift
//  VerdeLunar
//
//  Created by Alberto Estrada on 09/03/24.
//

import SwiftUI

struct Home: View {
    
    // Category List View Properties
    
    @State var selectedCategory = ""
    
    var body: some View {
        ScrollView {
            // Header
            VStack {
                HStack {
                    Text("Hola, Carmina")
                        .font(.system(size: 22))
                        
                }
        
                
                HStack {
                    Text("Order from of the best of **snaks**")
                        .font(.system(size: 35))
                        .padding(.trailing)
                    
                  
                    
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .padding()
                        .frame(width: 70, height: 90)
                        
                }
                .padding() // Modificar a 30
                // Category List
                CategoryListView
                
                // Collection View
                HStack {
                    Text("Choco **colections**")
                        .font(.system(size: 24))
                    
                    Spacer()
                    
                    Image (systemName: "arrow.right")
                        .imageScale(.large)
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
                                if item.title != "ALL" {
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
            
        }
        .padding()
        .frame(width:336, height:422)
        .background(product.color.opacity(0.2))
        .padding(.horizontal)
    }
}
