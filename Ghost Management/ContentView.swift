//
//  ContentView.swift
//  Ghost Management
//
//  Created by Skyler Szijjarto on 12/21/22.
//

import SwiftUI
import WebKit

// Tab bar
let tabBarFontSize: Font = .caption
let barColor: Color = Color("barColor")

struct ContentView: View {
    var body: some View {
        TabView {
            Dashboard()
                .tabItem() {
                    Image(systemName: "list.bullet.clipboard")
                    Text("Dashboard")
                        .font(tabBarFontSize)
                        .fontWeight(.heavy)
                }
                .toolbarBackground(barColor, for: .tabBar)
            LiveSite()
                .tabItem() {
                    Image(systemName: "power")
                    Text("Live Site")
                        .font(tabBarFontSize)
                        .fontWeight(.heavy)
                }
                .toolbarBackground(barColor, for: .tabBar)
            Documentation()
                .tabItem() {
                    Image(systemName: "doc.text")
                    Text("Documentation")
                        .font(tabBarFontSize)
                        .fontWeight(.heavy)
                }
                .toolbarBackground(barColor, for: .tabBar)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
