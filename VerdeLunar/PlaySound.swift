//
//  PlaySound.swift
//  VerdeLunar
//
//  Created by Alumno on 10/03/24.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer!

func playSound(audio: String){
    let url = Bundle.main.url(forResource: audio, withExtension: "wav")
    
    guard url != nil else {
        return
    }
    
    do {
        player = try AVAudioPlayer(contentsOf: url!)
        player?.play()
    }catch{
        print("error")
    }
}
