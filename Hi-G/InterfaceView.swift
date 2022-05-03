//
//  InterfaceView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/02.
//

import SwiftUI

struct LandingButton: View {
    var btnText: String
    
    var body: some View {
        NavigationLink(destination: InterfaceList(),
                       label: { Text(btnText) })
            .frame(maxWidth: .infinity, maxHeight: 200)
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(color: Color.black, radius: 1, x: 0, y: 0))
    }
}

struct InterfaceView: View {
    var body: some View {
        VStack(spacing: 20) {
            LandingButton(btnText: "Bars")
            LandingButton(btnText: "Views")
            LandingButton(btnText: "Controls")
        }
    }
}

struct InterfaceView_Previews: PreviewProvider {
    static var previews: some View {
        InterfaceView()
    }
}
