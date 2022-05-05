//
//  PickersView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/04.
//

import SwiftUI

struct CompactDatePicker: View {
    @State private var date = Date()
    
    var body: some View {
        DatePicker(
            "Start Date",
            selection: $date,
            displayedComponents: [.date]
        )
        .padding(.horizontal, 16)
    }
}

struct InlineDatePicker: View {
    @State private var date = Date()
    
    var body: some View {
        DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            .padding(.horizontal, 16)
    }
}

struct WheelsDatePicker: View {
    @State private var date = Date()
    
    var body: some View {
        DatePicker("날짜를 선택하세요", selection: $date)
            .datePickerStyle(WheelDatePickerStyle())
            .labelsHidden()
            .padding(.horizontal, 16)
    }
}

struct PickersView: View {
    @State private var isPickerType = 1
    
    var body: some View {
        TabView(selection: $isPickerType) {
            CompactDatePicker().tabItem({
                Image(systemName: "house")
                Text("Comfact")
            }).tag(1)
            InlineDatePicker().tabItem({
                Image(systemName: "house")
                Text("Inline")
            }).tag(2)
            WheelsDatePicker().tabItem({
                Image(systemName: "house")
                Text("Wheels")
            }).tag(3)
        }
        .navigationTitle("Pickers")
    }
}

struct PickersView_Previews: PreviewProvider {
    static var previews: some View {
        PickersView()
    }
}
