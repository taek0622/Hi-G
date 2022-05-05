//
//  SheetsView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/03.
//

import SwiftUI

struct SheetsView: View {
    @State private var isShowingSheet = false
    var body: some View {
        VStack {
            Button(action: {
                isShowingSheet.toggle()
            }) {
                Text("Show Modal Sheets")
            }
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: Color.black, radius: 1, x: 0, y: 0))
            .sheet(isPresented: $isShowingSheet,
                   onDismiss: didDismiss) {
                VStack {
                    Text("Modal Sheets")
                        .font(.title)
                        .padding(50)
                    Text("This is Large Size Modal Sheets")
                        .padding(50)
                    Button("Dismiss",
                           action: { isShowingSheet.toggle() })
                }
            }
        }
        .navigationTitle("Sheets")
    }

    func didDismiss() {
        // Handle the dismissing action.
    }
}

struct SheetsView_Previews: PreviewProvider {
    static var previews: some View {
        SheetsView()
    }
}
