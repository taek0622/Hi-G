//
//  NavigationBarsView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/03.
//

import SwiftUI

struct NavigationBarsView: View {
    @State private var selectedButton = 1
    @State private var isDisplay = false
    
    var body: some View {
        ZStack {
//            Picker("", selection: $selectedButton, content: {
//                Text("Large Title").tag(1)
//                Text("small title").tag(2)
//                Text("Title hidden").tag(3)
//            })
//            .pickerStyle(.segmented)
            Toggle("TitleDisplayMode", isOn: $isDisplay)
            VStack {
                Text("왼쪽 상단에 back 버튼과 함께 back이라는 글자, 혹은 이전 화면의 타이틀이 있는 경우 이전 화면의 타이틀이 나타납니다.")
                    .bold()
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
                    .foregroundColor(Color.white)
                Spacer()
            }
        }
        .padding(.horizontal, 16)
        .navigationTitle("Title")
//        .navigationBarTitleDisplayMode(selectedButton == 2 ? .inline : .large)
        .navigationBarTitleDisplayMode(isDisplay ? .large : .inline)
        .navigationBarBackButtonHidden(selectedButton == 3 ? true : false)
    }
}

struct NavigationBarsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarsView()
    }
}
