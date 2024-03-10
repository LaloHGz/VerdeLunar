//
//  ProductModel.swift
//  VerdeLunar
//
//  Created by Alberto Estrada on 09/03/24.
//

import SwiftUI

struct Product: Identifiable {
    
    var id: UUID = .init()
    var iden: String
    var name: String
    var category: String
    var image: String
    var color: Color
    var price: Int
    
}

var productList = [
    Product(iden: "0",name: "Toalla de tela", category: "Choco", image: "scissors", color: .pink ,price: 40),
    Product(iden: "1", name: "Desechar residuos", category: "Wafles", image: "moon.fill",color: .yellow , price: 50),
    Product(iden: "2", name: "Calzones menstruales", category: "Toffee", image: "humidity.fill",color: .red , price: 60),
    Product(iden: "3", name: "Copa menstrual", category: "Wafles", image: "mountain.2.fill", color: .green ,price: 30),
    Product(iden: "4", name: "Chips Ajoy", category: "Choco", image: "house", color: .blue ,price: 55),
    Product(iden: "5", name: "Dados Pizza", category: "Toffee", image: "house", color: .orange ,price: 30),
]
