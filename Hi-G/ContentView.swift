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
                            Image(systemName: "house")
                            Text("Home")
                        }
                        .tag(1)
                    
                    InterfaceView()
                        .tabItem {
                            Image(systemName: "rectangle.and.hand.point.up.left.filled")
                            Text("UI Components")
                        }
                        .tag(2)
                    
                    VisualDesignView()
                        .tabItem {
                            Image(systemName: "paintpalette")
                            Text("Visual Design")
                        }
                        .tag(3)
                }
            }
            .background(Color.backgroundColor)
            .navigationTitle("Hi-G")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
