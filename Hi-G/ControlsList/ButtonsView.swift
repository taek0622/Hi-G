//
//  ButtonsView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/04.
//

import SwiftUI

struct ButtonsView: View {
    @State private var btnStyle = 1
    @State private var btnSize = 1
    @State private var isToggleClicked = false
    
    var body: some View {
        VStack {
            VStack {
                Text("System Button")
                    .bold()
                    .font(.system(size: 20))
                Button(action: {}, label: {
                    Image(systemName: "play.fill")
                    Text("Play")
                    /*
                     모디파이어는 if 같은 분기문으로 처리할 수 없을까?
                     같은 버튼을 계속 반복하는 방법 뿐?
                     삼항연산자를 중첩사용해도 되는 듯?
                     => 이게 맞는 방법인가?
                     function으로 padding 주는 방법은? => 이거는 무리일지도...?
                     왜 HIG가 다 UIKit로 된 예제뿐인지....
                     SwiftUI에서는 제대로 지원 안하는게 너무 많은데..
                     직접 구현해야할까? 아니면 그냥 UIKit을 사용하는 게 맞는 방법인걸까?
                     */
                })
    //            .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10)) // small size
    //            .padding(.init(top: 10, leading: 15, bottom: 10, trailing: 15)) // medium size
    //            .padding(.init(top: 20, leading: 25, bottom: 20, trailing: 25)) // large size
                .padding(btnSize == 2 ? .init(top: 10, leading: 15, bottom: 10, trailing: 15) : (btnSize == 3 ? .init(top: 20, leading: 25, bottom: 20, trailing: 25) : .init(top: 5, leading: 10, bottom: 5, trailing: 10)))
                .background(RoundedRectangle(cornerRadius: 20).fill(btnStyle == 2 ? Color("LightGray") : (btnStyle == 3 ? Color("TintedBlue") : (btnStyle == 4 ? Color.blue : Color.white))))
                .foregroundColor(btnStyle == 4 ? Color.white : Color.blue)
                .frame(height: 100)
                VStack {
                    Text("Button Style")
                        .font(.system(size: 14))
                    Picker("Button Style", selection: $btnStyle, content: {
                        Text("Plain").tag(1)
                        Text("Gray").tag(2)
                        Text("Tinted").tag(3)
                        Text("Filled").tag(4)
                    })
                    .pickerStyle(.segmented)
                }
                .padding(.vertical, 10)
                VStack {
                    Text("Button Size")
                        .font(.system(size: 14))
                    Picker("Button Size", selection: $btnSize, content: {
                        Text("Small").tag(1)
                        Text("Medium").tag(2)
                        Text("Large").tag(3)
                    })
                    .pickerStyle(.segmented)
                }
                .padding(.vertical, 10)
            }
            Spacer().frame(height: 50)
            VStack {
                Text("Toggle Button")
                    .bold()
                    .font(.system(size: 20))
                Button(action: { isToggleClicked.toggle() }, label: {
                    VStack {
                        Image(systemName: isToggleClicked ? "heart.fill" : "heart")
                            .resizable()
                            .frame(width: 22, height: 22)
                        Text(isToggleClicked ? "Clicked" : "UnClicked")
                    }
                })
                .foregroundColor(isToggleClicked ? Color.red : Color.gray)
            }
        }
        .padding(.horizontal, 16)
        .navigationBarTitle("Buttons")
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
