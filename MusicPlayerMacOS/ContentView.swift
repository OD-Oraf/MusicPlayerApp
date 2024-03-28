//
//  ContentView.swift
//  MusicPlayerMacOS
//
//  Created by OD Orafidiya on 3/28/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var isSideBarVisible: Bool = true
    
    var body: some View {
        VStack {
            NavigationSplitView {
                if isSideBarVisible {
                    SidebarView()
                }
            } detail: {
                Text( "THis is the main view")
                
                
            }
            Divider()
            MainContentView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
    }
}
