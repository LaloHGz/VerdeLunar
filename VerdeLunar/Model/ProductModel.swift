//
//  ProductModel.swift
//  VerdeLunar
//
//  Created by Alberto Estrada on 09/03/24.
//

import SwiftUI

struct Product: Identifiable {
    
    var id: UUID = .init()
    var name: String
    var category: String
    var image: String
    var color: Color
    var price: Int
    
}

var productList = [
    Product(name: "Good surface", category: "Choco", image: "home", color: .pink ,price: 8),
    Product(name: "Unreal muffins", category: "Wafles", image: "home",color: .yellow , price: 8),
    Product(name: "Ramen soyu", category: "Toffee", image: "home",color: .red , price: 8),
    Product(name: "Tacos dorados", category: "Wafles", image: "home", color: .green ,price: 8),
    Product(name: "Chips Ajoy", category: "Choco", image: "home", color: .blue ,price: 8),
    Product(name: "Dados Pizza", category: "Toffee", image: "home", color: .orange ,price: 8),
]
