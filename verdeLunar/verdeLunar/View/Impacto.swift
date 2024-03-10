//
//  Impacto.swift
//  verdeLunar
//
//  Created by Alumno on 10/03/24.
//

import SwiftUI

struct Impacto: View {
    
    let purplePeriwinkle = Color(red: 203/255, green: 189/255, blue: 242/255).opacity(0.9)
    let blueColumbia = Color(red: 196/255, green: 229/255, blue: 251/255).opacity(0.9)
    let yellowChampagne = Color(red: 240/255, green: 179/255, blue: 86/255).opacity(0.9)
    let blueColumbiaStrong = Color(red: 13/255, green: 120/255, blue: 191/255).opacity(0.9)
    let yellowChampagneStrong = Color(red: 237/255, green: 162/255, blue: 49/255).opacity(0.9)
    
    @State private var towelsSaved = 0
    @State private var nonBiodegradableWasteSaved = 0.0
    
    // Costo de una toalla sanitaria (en MXN) y de una copa menstrual (en MXN)
    let towelCostMXN = 2.5
    let cupCostMXN = 200.0
    
    // Huella de carbono de una toalla sanitaria (kg CO2-equivalente por mes)
    let towelCarbonFootprintRange = 0.42...0.83
    
    // Contadores de meses y años
    @State private var monthsCount = 0
    @State private var yearsCount = 0
    
    // Fecha de adquisición de la copa y el calzón menstrual
    @State private var cupAcquisitionDate = Date()
    @State private var pantyAcquisitionDate = Date()
    
    var body: some View {
        ScrollView {
            VStack {
                // Header
                HStack {
                    Text("\nTu ciclo, tu **legado**")
                        .font(.system(size: 26))
                        .frame(width: 324, alignment: .leading)
                }
                .padding(-5)
                
                HStack {
                    Text("Descubre tu **impacto**")
                        .font(.system(size: 32))
                        .padding(.trailing)
                    
                    Button(action: {
                        resetCounters()
                    }) {
                        Image(systemName: "globe.americas")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 145, height: 90)
                            .foregroundColor(Color.green)
                    }
                }
                .padding(-10)
                HStack {
                    
                    Text("\n**Simulador**")
                        .font(.system(size: 22))
                        .frame(width: 310, alignment: .leading)
                }
                .padding(-10)
                
                // Section: Toallas Sanitarias Ahorradas
                VStack(alignment: .leading) {
                    HStack {
                        Button(action: {
                            // Incrementar el contador de toallas en un mes
                            towelsSaved += 20
                            updateMonthYearCounters()
                        }) {
                            Text("Añadir Mes")
                                .font(.headline)
                                .padding()
                                .frame(minWidth: 150)
                                .background(Color.gray.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(7)
                        
                        
                        
                        Button(action: {
                            // Incrementar el contador de toallas en un año
                            towelsSaved += 240
                            updateMonthYearCounters()
                        }) {
                            Text("Añadir Año")
                                .font(.headline)
                                .padding()
                                .frame(minWidth: 150)
                                .background(Color.gray.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.top, 10)
                    
                    VStack {
                        Text("**Toallas Sanitarias Ahorradas**")
                            .font(.headline)
                            .padding(.bottom, 5)
                            .frame(minWidth: 300)
                        
                        Text("\(towelsSaved)")
                            .font(.title)
                            .frame(minWidth: 300)
                    }
                    .padding()
                    .background(purplePeriwinkle)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    Spacer()
                    Spacer()
                    
                    VStack {
                        Text("**Ahorro Total**")
                            .font(.headline)
                            .padding(.bottom, 5)
                            .frame(minWidth: 300)
                        
                        let totalSavingsMXN = Double(towelsSaved) * towelCostMXN - cupCostMXN
                        Text("\(totalSavingsMXN, specifier: "%.2f") MXN")
                            .font(.title)
                            .frame(minWidth: 300)
                    }
                    .padding()
                    .background(blueColumbia)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    Spacer()
                    Spacer()
                    
                    VStack {
                        Text("**Huella de Carbono**")
                            .font(.headline)
                            .padding(.bottom, 5)
                            .frame(minWidth: 300)
                        
                        let monthlyCarbonFootprint = calculateMonthlyCarbonFootprint()
                        Text("\(monthlyCarbonFootprint, specifier: "%.2f") kg CO2")
                            .font(.title)
                            .frame(minWidth: 300)
                    }
                    .padding()
                    .background(blueColumbiaStrong)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    HStack {
                        Text("Meses: \(monthsCount)")
                        Spacer()
                        Text("Años: \(yearsCount)")
                    }
                    .padding()
                    .font(.headline)
                    .padding(-10)
                    HStack {
                        
                        Text("**Monitoreo**")
                            .font(.system(size: 22))
                            .frame(width: 300, alignment: .leading)
                    }
                    .padding()
                    
                    
                    // Sección de seguimiento de vida útil de la copa menstrual
                    VStack {
                        DatePicker("**Copa menstrual**", selection: $cupAcquisitionDate, displayedComponents: .date)
                            .padding()
                        Text("Meses de vida útil restantes: \(calculateRemainingLife(cupAcquisitionDate, lifespanInYears: 10))")
                            .padding(.bottom, 5)
                            .frame(minWidth: 300)
                    }
                    .padding()
                    .background(yellowChampagne)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    // Sección de seguimiento de vida útil del calzón menstrual
                    VStack {
                        DatePicker("**Calzón menstrual**", selection: $pantyAcquisitionDate, displayedComponents: .date)
                            .padding()
                        Text("Meses de vida útil restantes: \(calculateRemainingLife(pantyAcquisitionDate, lifespanInYears: 5))")
                            .padding(.bottom, 5)
                            .frame(minWidth: 300)
                    }
                    .padding()
                    .background(yellowChampagneStrong)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding(10)
            }
            .padding()
        }
    }
    
    // Función para calcular la huella de carbono mensual
    func calculateMonthlyCarbonFootprint() -> Double {
        let averageCarbonFootprint = Double(monthsCount) * 0.6283
        return averageCarbonFootprint
    }
    
    // Función para actualizar los contadores de meses y años
    func updateMonthYearCounters() {
        monthsCount = towelsSaved/20
        yearsCount = monthsCount / 12
    }
    
    // Función para reiniciar los contadores
    func resetCounters() {
        towelsSaved = 0
        monthsCount = 0
        yearsCount = 0
    }
    
    // Función para calcular los meses restantes de vida útil
    func calculateRemainingLife(_ acquisitionDate: Date, lifespanInYears: Int) -> Int {
        let currentDate = Date()
        let calendar = Calendar.current
        let acquiredComponents = calendar.dateComponents([.year, .month, .day], from: acquisitionDate)
        let currentComponents = calendar.dateComponents([.year, .month, .day], from: currentDate)
        
        let years = currentComponents.year! - acquiredComponents.year!
        let months = currentComponents.month! - acquiredComponents.month!
        let days = currentComponents.day! - acquiredComponents.day!
        
        var totalMonths = years * 12 + months
        if days > 0 {
            totalMonths += 1
        }
        
        let remainingMonths = lifespanInYears * 12 - totalMonths
        return max(0, remainingMonths)
    }
}

struct Impacto_Previews: PreviewProvider {
    static var previews: some View {
        Impacto()
    }
}
