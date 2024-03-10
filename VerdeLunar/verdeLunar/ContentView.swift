//
//  ContentView.swift
//  verdeLunar
//
//  Created by clp on 09/03/24.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    @State private var isPlacementEnabled = false
    @State private var selectedModel: String?
    @State private var modelConfirmed: String?
    
    
    var models: [String] = ["toalla1","toalla2"]
    
    var body: some View {
        ZStack(alignment: .bottom){
            ARViewContainer()
            // visualiza el picker
            PlacementButtonsView(isPlacementEnabled: self.$isPlacementEnabled,  selectedModel: self.$selectedModel, modelConfirmed: self.$modelConfirmed)
        }
    }
}


struct ARViewContainer: UIViewRepresentable {
  
        func makeUIView(context: Context) -> ARView {
         
         let arView = ARView(frame: .zero)
         
         let config = ARWorldTrackingConfiguration()
         config.planeDetection = [.horizontal, .vertical]
         config.environmentTexturing = .automatic
         
         if ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh) {
         config.sceneReconstruction = .mesh
         }
         
         arView.session.run(config)
         
         return arView
         
         }
         
         func updateUIView(_ uiView: ARView, context: Context) {
             let fileName = "toalla.usdz"
             
             print("DEBUG: adding model to scene \(fileName)")
             
             let modelEntity = try! ModelEntity.loadModel(named: fileName)
             
             let anchorEntity = AnchorEntity(plane: .any)
             anchorEntity.addChild(modelEntity)
             
             uiView.scene.addAnchor(anchorEntity)
         }

}


struct PlacementButtonsView: View {
    @Binding var isPlacementEnabled: Bool
    @Binding var selectedModel:String?
    @Binding var modelConfirmed: String?
    
    var body: some View {
        HStack {
            // CANCEL BUTTON
            Button(action: {
                print("DEBUG: Cancel Model ")
                
                self.resetPlacementParameters()
            }){
                Image(systemName: "xmark")
                    .frame(width: 60, height: 60)
                    .font(.title)
                    .background(Color.white
                        .opacity(0.75))
                    .cornerRadius(30)
                    .padding(20)
            }
            // CONFIRM BUTTON
            Button(action: {
                print("DEBUG: Confirmed Model")
                self.modelConfirmed = self.selectedModel
            }){
                Image(systemName: "checkmark")
                    .frame(width: 60, height: 60)
                    .font(.title)
                    .background(Color.white
                        .opacity(0.75))
                    .cornerRadius(30)
                    .padding(20)
            }
        }
    }
    func resetPlacementParameters() {
        self.isPlacementEnabled = false
        self.selectedModel = nil
    }
    
    func back() {
        //Mandar a la pantalla anterior
    }
}

#Preview {
    ContentView()
}
