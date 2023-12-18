//
//  ContentView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/01.
//

import SwiftUI

struct ContentView: View {
    @State private var isSelection = 1
    
    var body: some View {
        NavigationView {
            TabView(selection: $isSelection) {
                Group() {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                        .tag(1)
                    
                    InterfaceView()
                        .tabItem {
                            Label("UIComponents", systemImage: "rectangle.and.hand.point.up.left.filled")
                        }
                        .tag(2)
                    
                    VisualDesignView()
                        .tabItem {
                            Label("Visual Design", systemImage: "paintpalette")
                        }
                        .tag(3)
                }
            }
            .background(Color.backgroundColor)
            .navigationTitle(isSelection == 1 ? "Hi-G" : (isSelection == 2 ? "UI Components" : "Visual Design"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
