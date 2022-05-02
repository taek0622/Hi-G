//
//  Data.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/02.
//

import Foundation

struct AccordionData {
    var btnText: String
    var contentsText: String
}


extension Accordion {
    static func all() -> [Accordion] {
        return [
            Accordion(btnText: "Introduction", contentsText: "Test1"),
            Accordion(btnText: "What is HIG", contentsText: "Test2"),
            Accordion(btnText: "iOS Design Themes", contentsText: "Test3"),
            Accordion(btnText: "Design Principles", contentsText: "Test4")
        ]
    }
}
