//
//  VisualDesignView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/05.
//

import SwiftUI

struct VisualDesignView: View {
    var body: some View {
        List {
            NavigationLink(destination: SystemColorListView(), label: {
                Text("System Color")
            })
            NavigationLink(destination: SFSymbolsListView(), label: {
                Text("SF Symbols")
            })
        }
    }
}

struct VisualDesignView_Previews: PreviewProvider {
    static var previews: some View {
        VisualDesignView()
    }
}
