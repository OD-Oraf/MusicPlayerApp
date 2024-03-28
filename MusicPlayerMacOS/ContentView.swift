//
//  ContentView.swift
//  MusicPlayerMacOS
//
//  Created by OD Orafidiya on 3/28/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var isPlaying = false
    @State private var volume : Double = 0.5
    // Placeholder for current track name
    @State private var currentTrack = "Track Name"
    
    var body: some View {
        NavigationView {
            SidebarView()
            MainContentView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
    }
}
