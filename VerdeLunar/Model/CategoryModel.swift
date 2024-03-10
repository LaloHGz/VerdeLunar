//
//  CategoryModel.swift
//  VerdeLunar
//
//  Created by Alberto Estrada on 09/03/24.
//

import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var categoryList: [CategoryModel] = [
    CategoryModel(icon: "", title: "Todas"),
    CategoryModel(icon: "house", title: "Alternativas Sostenibles"),
    CategoryModel(icon: "hands.and.sparkles.fill", title: "Salud Menstrual"),
    CategoryModel(icon: "figure.wrestling", title: "Empoderamiento Femenino"),
    CategoryModel(icon: "hands.and.sparkles.fill", title: "Impacto Ambiental"),
    
    

]
