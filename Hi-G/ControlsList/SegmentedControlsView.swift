//
//  SegmentedControlsView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/04.
//

import SwiftUI

struct SegmentedControlsView: View {
    @State private var selectedSegment = 1
    @State private var cntSegment = 3
    
    var body: some View {
        VStack {
            Stepper(value: $cntSegment, in: 1...6) {
                HStack {
                    Text("Segment 개수: ")
                    if cntSegment < 2 || cntSegment > 5 {
                        Text("\(cntSegment)").font(.system(size: 30)).bold().foregroundColor(Color.red)
                    }
                    else {
                        Text("\(cntSegment)").font(.system(size: 30)).bold().foregroundColor(Color.black)
                    }
                    Text("개")
                }
            }
            Picker("Segmented Controls Title", selection: $selectedSegment, content: {
                Text("1st").tag(1)
                Text("2nd").tag(2)
                if cntSegment >= 3 {
                    Text("3rd").tag(3)
                }
                if cntSegment >= 4 {
                    Text("4th").tag(4)
                }
                if cntSegment >= 5 {
                    Text("5th").tag(5)
                }
            })
            .pickerStyle(.segmented)
            if cntSegment > 5 || cntSegment < 2 {
                Text("iPhone에서는 2개 이상, 5개 이하의 세그먼트가 있어야 합니다.")
                    .padding(10)
                    .foregroundColor(Color.white)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.red))
            }
        }
        .padding(.horizontal, 16)
    }
}

struct SegmentedControlsView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlsView()
    }
}
