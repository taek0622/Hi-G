//
//  ActionSheetsView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/03.
//

import SwiftUI

struct ActionSheetsView: View {
    @State private var isShowingActionSheet = false
    @State private var isShowingSheetsTitle = false
    
    var body: some View {
        VStack {
            Button(action: {
                isShowingActionSheet = true
            }, label: { Text("Show ActionSheet") })
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: Color.black, radius: 1, x: 0, y: 0))
                .confirmationDialog("ActionSheet Title", isPresented: $isShowingActionSheet, titleVisibility: isShowingSheetsTitle ? .visible : .hidden) {
                    Button(action: {}, label: { Text("normal") })
                    Button(role: .destructive, action: {}, label: { Text("destructive") })
                }
            Toggle("Show ActionSheets' Title", isOn: $isShowingSheetsTitle)
        }
        .padding(.horizontal, 16)
        .navigationTitle("Action Sheets")
    }
}

struct ActionSheetsView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetsView()
    }
}
