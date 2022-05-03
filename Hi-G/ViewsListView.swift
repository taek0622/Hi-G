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
            NavigationLink(destination: ActionSheetsView(), label: { Text("Action Sheets") })
            NavigationLink(destination: Text("SwiftUI에서는 Activity Views를 자체 지원하지 않습니다.\nUIKit의 요소를 사용해야만 구현할 수 있습니다."), label: { Text("Activity Views") })
            NavigationLink(destination: AlertsView(), label: { Text("Alerts") })
            NavigationLink(destination: Text("Collections"), label: { Text("Collections") })
            NavigationLink(destination: Text("Image Views"), label: { Text("Image Views") })
            NavigationLink(destination: Text("Pages"), label: { Text("Pages") })
            NavigationLink(destination: Text("iPhone에서는 Popover를 사용하지 않습니다. iPhone에서 비슷한 기능을 보여주기 위해서는 Sheets를 사용해야 합니다."), label: { Text("Popovers") })
            NavigationLink(destination: ScrollViewsView(), label: { Text("Scroll Views") })
            NavigationLink(destination: SheetsView(), label: { Text("Sheets") })
            NavigationLink(destination: Text("iPad용 요소입니다."), label: { Text("Split Views") })
        }
        NavigationLink(destination: Text("Tables"), label: { Text("Tables") })
        NavigationLink(destination: Text("Text Views"), label: { Text("Text Views") })
        NavigationLink(destination: Text("Web Views"), label: { Text("Web Views") })
    }
}
