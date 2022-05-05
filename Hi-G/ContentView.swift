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
                    
                    Text("Visual Design")
                        .tabItem{
                            Image(systemName: "house")
                            Text("Visual Design")
                        }
                        .tag(3)
                }
                .padding(.horizontal, 16)
            }
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
