//
//  InterfaceList.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/02.
//

import SwiftUI

struct InterfaceList: View {
    @State private var topNavSelection = "Bars"
    
    var body: some View {
        VStack(spacing: 0) {
            InterfaceTopBar(topNavSelection: self.$topNavSelection)
            List {
                if topNavSelection == "Bars" {
                    BarsListView()
                }
                if topNavSelection == "Views" {
                    ViewsListView()
                }
                if topNavSelection == "Controls" {
                    ControlsListView()
                }
            }
//            List {
//                Section(header: Text("Views")) {
//                    NavigationLink(destination: ContentView(), label: {Text("A")})
//                }
//            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct InterfaceList_Previews: PreviewProvider {
    static var previews: some View {
        InterfaceList()
    }
}
