//
//  TabBarsView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/03.
//

import SwiftUI

struct TabBarsView: View {
    @State private var isSelection = 1
    @State private var cntTab = 3
    
    var body: some View {
        VStack {
            VStack {
                Stepper(value: $cntTab, in: 2...6) {
                    Text("Tab 개수: \(cntTab)개")
                }
            }
            .padding(.horizontal, 16)
            ZStack {
                TabView(selection: $isSelection) {
                    Text("Home")
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }
                        .tag(1)

                    Text("Componenets")
                        .tabItem {
                            Image(systemName: "cube")
                            Text("Components")
                        }
                        .tag(2)
                    
                    if cntTab >= 4 {
                        Text("third")
                            .tabItem {
                                Image(systemName: "cube")
                                Text("third")
                            }
                            .tag(3)
                    }
                    
                    if cntTab >= 5 {
                        Text("fourth")
                            .tabItem {
                                Image(systemName: "cube")
                                Text("fourth")
                            }
                            .tag(4)
                    }

                    Text("Settings")
                        .tabItem {
                        Image(systemName: "gearshape")
                            Text("Settings")
                        }
                        .tag(cntTab <= 5 ? cntTab : 5)
                }
                
                if cntTab < 3 || cntTab > 5 {
                    VStack {
                        Spacer()
                        Text("iPhone에서는 일반적으로 3~5개의 탭을 사용합니다")
                            .padding(10)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.red))
                        Spacer().frame(height: 70)
                    }
                }
            }
        }
        .navigationTitle("Tab Bars")
    }
}

struct TabBarsView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarsView()
    }
}
