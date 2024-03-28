//
//  SidebarView.swift
//  MusicPlayerMacOS
//
//  Created by OD Orafidiya on 3/28/24.
//

import Foundation
import SwiftUI

struct SidebarView: View {
    var body: some View {
        List{
            NavigationLink(destination: Text("Item 1 Detail View")) {
                Label("Item 1", systemImage: "music.note")
            }
            NavigationLink(destination: Text("Item 1 Detail View")) {
                Label("Item 2", systemImage: "photo")
            }
        }
        .listStyle(SidebarListStyle())
        .frame(minWidth: 20, idealWidth: 50, maxWidth: 100)
    }
    func toggleSidebar() {
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
    }
}

    
    
struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
        
        
    }
}
