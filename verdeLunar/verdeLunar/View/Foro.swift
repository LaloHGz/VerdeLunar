import SwiftUI

struct Foro: View {
    
    let purplePeriwinkle = Color(red: 203/255, green: 189/255, blue: 242/255).opacity(0.9)
            let blueColumbia = Color(red: 196/255, green: 229/255, blue: 251/255).opacity(0.9)
            let yellowChampagne = Color(red: 240/255, green: 179/255, blue: 86/255).opacity(0.9)
            let blueColumbiaStrong = Color(red: 13/255, green: 120/255, blue: 191/255).opacity(0.9)
            let yellowChampagneStrong = Color(red: 237/255, green: 162/255, blue: 49/255).opacity(0.9)
    
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    
                    // Ejemplos en idiomas indígenas
                    QuestionRow(question: "¿Kajpia mä tsy ma kändani tsa zeguí ra tsï ga dxe u je dxiñi?", author: "Josefina", likes: 18) // Zapoteco
                    QuestionRow(question: "¿Jpa maxu'bi ngu xu ma ñupaxi ja za xox'a hñä hñü?", author: "Marta", likes: 12) // Otomí
                    QuestionRow(question: "¿Kualli tlein itech mochintin zan metsin tonaltzintli yaoyotl?", author: "Citlali", likes: 30) // Náhuatl
                    QuestionRow(question: "¿Cómo puedo aliviar los dolores menstruales de forma natural?", author: "María", likes: 15)
                    QuestionRow(question: "¿Qué debo hacer si mi ciclo menstrual es irregular?", author: "Ana", likes: 20)
                    QuestionRow(question: "¿Cuál es el impacto de la menstruación en la salud mental?", author: "Sofía", likes: 10)
                    QuestionRow(question: "¿Cuáles son los mitos comunes sobre la menstruación?", author: "Lupita", likes: 25)
                }
                .listStyle(PlainListStyle())
                Spacer()
                HStack {
                    TextField("Haz una nueva pregunta...", text: .constant(""))
                        .padding(8)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    Button(action: {
                        // Acción para enviar una nueva pregunta
                    }) {
                        Text("Enviar")

                            .foregroundColor(.black)
                            .padding(8)
                            .background(blueColumbia)
                            .cornerRadius(10)
                            .padding(.horizontal, 2)
                    }
                }
                .padding()
            }
            .navigationBarTitle("Red de apoyo", displayMode: .inline)
        }
    }
}

struct QuestionRow: View {
    var question: String
    var author: String
    var likes: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
                VStack(alignment: .leading) {
                    Text(question)
                        .font(.headline)
                    Text("\(author)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                HStack(spacing: 4) {
                    Text("\(likes)")
                        .foregroundColor(.gray)
                    Image(systemName: "heart")
                        .foregroundColor(.pink)
                }
            }
            HStack {
                Spacer()
                Button(action: {
                    // Acción para responder a la pregunta
                }) {
                    Text("Responder")
                        .foregroundColor(Color.blue.opacity(0.5))
                }
                Button(action: {
                    // Acción para ver respuestas
                }) {
                    Text("Ver respuestas")
                        .foregroundColor(Color.blue.opacity(0.8))
                }
            }
        }
        .padding()
    }
}

struct Foro_Previews: PreviewProvider {
    static var previews: some View {
        Foro()
    }
}

