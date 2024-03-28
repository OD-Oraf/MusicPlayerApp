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
        .toolbar {
            // Toggle Sidebar Button
            ToolbarItem(placement: .navigation) {
                Button(action: toggleSidebar) {
                    Image(systemName: "sidebar.left")
                }
            }
        }
        .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
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
