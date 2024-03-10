//
//  CategoryModel.swift
//  verdeLunar
//
//  Created by Alumno on 10/03/24.
//

import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var categoryList: [CategoryModel] = [
    CategoryModel(icon: "", title: "Todas"),
    CategoryModel(icon: "leaf", title: "Sostenibilidad"),
    CategoryModel(icon: "drop.circle", title: "Salud Menstrual"),
    CategoryModel(icon: "arrow.up.heart", title: "Empoderamiento Femenino"),
    CategoryModel(icon: "globe.americas.fill", title: "Impacto Ambiental"),

]
