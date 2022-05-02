//
//  InterfaceTopBar.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/02.
//

import SwiftUI

struct TopNavBtn: View {
    var btnText: String
    var btnImage: String
    
    var body: some View {
        Button(action: {},
               label: {
            VStack {
                Image(systemName: btnImage)
                Text(btnText)
            }
        })
    }
}

struct InterfaceTopBar: View {
    var body: some View {
        HStack {
            TopNavBtn(btnText: "Bars", btnImage: "sidebar.left")
            TopNavBtn(btnText: "Views", btnImage: "iphone")
            TopNavBtn(btnText: "Controls", btnImage: "switch.2")
        }
    }
}

struct InterfaceTopBar_Previews: PreviewProvider {
    static var previews: some View {
        InterfaceTopBar()
    }
}
