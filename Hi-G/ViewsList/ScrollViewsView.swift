//
//  ScrollViewsView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/03.
//

import SwiftUI

struct ScrollViewsView: View {
    @State private var selectedDirection = 1
    
    var body: some View {
        VStack {
            if selectedDirection == 1 {
                ScrollView {
                    Text("화면을 위 아래로 당겨보세요.")
                }
            }
            else {
                ScrollView(.horizontal) {
                    Text("화면을 좌우로 당겨보세요.")
                }
            }
            Picker("", selection: $selectedDirection, content: {
                Text(".vertical").tag(1)
                Text(".horizontal").tag(2)
            })
            .pickerStyle(.segmented)
        }
        .padding(.horizontal, 16)
        .navigationTitle("Scroll Views")
    }
}

struct ScrollViewsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewsView()
    }
}
