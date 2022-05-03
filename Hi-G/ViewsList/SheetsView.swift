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
        Button(action: {
            isShowingSheet.toggle()
        }) {
            Text("Show Modal Sheets")
        }
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

    func didDismiss() {
        // Handle the dismissing action.
    }
}

struct SheetsView_Previews: PreviewProvider {
    static var previews: some View {
        SheetsView()
    }
}
