//
//  MainContentView.swift
//  MusicPlayerMacOS
//
//  Created by OD Orafidiya on 3/28/24.
//

import Foundation
import SwiftUI

struct MainContentView: View {
    @State private var isPlaying = false
    @State private var volume : Double = 50.0
    // Placeholder for current track name
    @State private var currentTrack = "Track Name"
    
    var body: some View {
        VStack {
            Text(currentTrack)
                .font(.headline)
            HStack {
                Button(action: {
                    
                }) {
                    Image(systemName: "backward.fill")
                }
                
                Button(action: {
                    self.isPlaying.toggle()
                }) {
                    Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                }
                
                Button(action: {
                    //Next track action
                }) {
                    Image(systemName: "forward.fill")
                }
            }
            .buttonStyle(BorderlessButtonStyle())
            .font(.title)
            
            Slider(value: $volume, in: 0...100, step: 5.0)
                .padding()
                .accentColor(.purple)
                .onReceive([self.volume].publisher.first()) { (volume) in
                    //Adjust Volume
                }
        }
    .padding()
    }
}
struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
