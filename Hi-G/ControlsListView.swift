//
//  ControlsListView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/02.
//

import SwiftUI

struct ControlsListView: View {
    var body: some View {
        Group() {
            NavigationLink(destination: ButtonsView(), label: { Text("Buttons") })
//            NavigationLink(destination: Text("Color Wells"), label: { Text("Color Wells") })
//            NavigationLink(destination: Text("Context Menus"), label: { Text("Context Menus") })
//            NavigationLink(destination: Text("Edit Menus"), label: { Text("Edit Menus") })
//            NavigationLink(destination: Text("Labels"), label: { Text("Lables") })
//            NavigationLink(destination: Text("Page Controls"), label: { Text("Page Controls") })
            NavigationLink(destination: PickersView(), label: { Text("Pickers") })
            NavigationLink(destination: ProgressIndicatorsView(), label: { Text("Progress Indicators") })
//            NavigationLink(destination: Text("Refresh Content Controls"), label: { Text("Refresh Content Controls") })
            NavigationLink(destination: SegmentedControlsView(), label: { Text("Segmented Controls") })
        }
        NavigationLink(destination: SliderStepperView(), label: { Text("Sliders / Steppers") })
//        NavigationLink(destination: Text("Switches"), label: { Text("Switches") })
//        NavigationLink(destination: Text("Text Fields"), label: { Text("Text Fields") })
    }
}
