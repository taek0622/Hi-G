//
//  ViewsListView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/02.
//

import SwiftUI

struct ViewsListView: View {
    var body: some View {
        Group() {
            NavigationLink(destination: Text("Action Sheets"), label: { Text("Action Sheets") })
            NavigationLink(destination: Text("Activity Views"), label: { Text("Activity Views") })
            NavigationLink(destination: Text("Alerts"), label: { Text("Alerts") })
            NavigationLink(destination: Text("Collections"), label: { Text("Collections") })
            NavigationLink(destination: Text("Image Views"), label: { Text("Image Views") })
            NavigationLink(destination: Text("Pages"), label: { Text("Pages") })
            NavigationLink(destination: Text("Popovers"), label: { Text("Popovers") })
            NavigationLink(destination: Text("Scroll Views"), label: { Text("Scroll Views") })
            NavigationLink(destination: Text("Sheets"), label: { Text("Sheets") })
            NavigationLink(destination: Text("Split Views"), label: { Text("Split Views") })
        }
        NavigationLink(destination: Text("Tables"), label: { Text("Tables") })
        NavigationLink(destination: Text("Text Views"), label: { Text("Text Views") })
        NavigationLink(destination: Text("Web Views"), label: { Text("Web Views") })
    }
}
