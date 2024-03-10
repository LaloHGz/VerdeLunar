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
    Product(name: "Toalla de tela", category: "Choco", image: "scissors", color: .pink ,price: 40),
    Product(name: "Desechar residuos", category: "Wafles", image: "moon.fill",color: .yellow , price: 50),
    Product(name: "Calzones menstruales", category: "Toffee", image: "humidity.fill",color: .red , price: 60),
    Product(name: "Copa menstrual", category: "Wafles", image: "mountain.2.fill", color: .green ,price: 30),
    Product(name: "Chips Ajoy", category: "Choco", image: "house", color: .blue ,price: 55),
    Product(name: "Dados Pizza", category: "Toffee", image: "house", color: .orange ,price: 30),
]
