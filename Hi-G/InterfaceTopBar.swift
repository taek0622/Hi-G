//
//  InterfaceTopBar.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/02.
//

import SwiftUI

struct TopNavBtn: View {
    @Binding var topNavSelection: String
    @State private var isClicked = false
    
    var btnText: String
    
    var body: some View {
        Button(action: {
            topNavSelection = btnText
            if btnText == topNavSelection {
                isClicked = true
            }
            else {
                isClicked = false
            }
        },
               label: {
            VStack {
                HStack {
                    Spacer()
                    Text(btnText).font(.system(size: 14)).foregroundColor(Color.black)
                    Spacer()
                }
                Rectangle().fill(isClicked ? Color.blue : Color.white).frame(height: 5)
            }
        })
    }
}

struct InterfaceTopBar: View {
    @Binding var topNavSelection: String
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                TopNavBtn(topNavSelection: self.$topNavSelection, btnText: "Bars")
                TopNavBtn(topNavSelection: self.$topNavSelection, btnText: "Views")
                TopNavBtn(topNavSelection: self.$topNavSelection, btnText: "Controls")
            }
            Divider().shadow(color: Color.black, radius: 1, x: 0, y: 0)
        }
    }
}

//struct InterfaceTopBar_Previews: PreviewProvider {
//    static var previews: some View {
//        InterfaceTopBar()
//    }
//}
