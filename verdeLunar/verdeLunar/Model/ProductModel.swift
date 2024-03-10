//
//  ProductModel.swift
//  verdeLunar
//
//  Created by Alumno on 10/03/24.
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
    Product(iden: "0",name: "Toalla de tela", category: "Sostenibilidad", image: "scissors", color: .pink ,price: 40),
    Product(iden: "1", name: "Desechar residuos", category: "Sostenibilidad", image: "trash",color: .yellow , price: 50),
    Product(iden: "2", name: "Calzones menstruales", category: "Salud", image: "humidity.fill",color: .red , price: 60),
    Product(iden: "3", name: "Copa menstrual", category: "Salud", image: "drop.halffull", color: .green ,price: 30),
    Product(iden: "4", name: "Menopausia", category: "Salud", image: "hourglass", color: .blue ,price: 55),
    Product(iden: "5", name: "Empoderar a la mujer", category: "Empoderamiento", image: "arrow.up.heart", color: .orange ,price: 30),
]
