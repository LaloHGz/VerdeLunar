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
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "house", title: "Choco"),
    CategoryModel(icon: "figure.wrestling", title: "Wafles"),
    CategoryModel(icon: "hands.and.sparkles.fill", title: "Toffee"),

]
