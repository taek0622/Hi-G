//
//  Data.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/02.
//

import SwiftUI

extension Color {
    static let subIvory = Color(hex: "#E6E7D5")
    static let backgroundColor = Color(hex: "#eeeeee")
    static let inactiveColor = Color(hex: "#999999")

    init(hex: String) {
        let scanner = Scanner(string: hex)
        let _ = scanner.scanString("#")

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double((rgb >> 0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}

struct AccordionData {
    var btnText: String
    var contentsText: String
}
