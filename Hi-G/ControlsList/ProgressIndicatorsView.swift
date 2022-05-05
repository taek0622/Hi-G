//
//  ProgressIndicatorsView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/04.
//

import SwiftUI

struct ProgressIndicatorsView: View {
    @State private var selectedProgress = 1
    @State private var downloadAmount: Double = 0.0
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            if selectedProgress == 1 {
                ProgressView()
            }
            else if selectedProgress == 2 {
                ProgressView("다운로드중...", value: downloadAmount, total: 100)
                    .onReceive(timer) { _ in
                                if downloadAmount < 100 {
                                    downloadAmount += 5
                                }
                            }
            }
            Picker("Progress Indicator Type", selection: $selectedProgress, content: {
                Text("Progress View").tag(1)
                Text("Progress Bar").tag(2)
            })
            .pickerStyle(.segmented)
        }
        .padding(.horizontal, 16)
        .navigationBarTitle("Progress Indicators")
    }
}

struct ProgressIndicatorsView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicatorsView()
    }
}
