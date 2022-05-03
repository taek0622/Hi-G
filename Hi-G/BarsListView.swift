//
//  BarsListView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/02.
//

import SwiftUI

struct BarsListView: View {
    var body: some View {
        NavigationLink(destination: NavigationBarsView(), label: { Text("Navigation Bars") })
        NavigationLink(destination: SearchBarsView(), label: { Text("Search Bars") })
        NavigationLink(destination: Text("Sidebars"), label: { Text("Sidebars") })
        NavigationLink(destination: Text("Status Bars"), label: { Text("Status Bars") })
        NavigationLink(destination: TabBarsView(), label: { Text("Tab Bars") })
        NavigationLink(destination: Text("Toolbars"), label: { Text("Toolbars") })
    }
}
