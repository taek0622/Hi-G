//
//  HomeView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/01.
//

import SwiftUI

struct Accordion: View {
    @State private var isShowingAccordionContents = false
    
    var btnText: String
    var contentsText: String
    
    var body: some View {
        ZStack(alignment: .top) {
            Text(contentsText)
                .frame(maxWidth: .infinity, minHeight: 0, maxHeight: isShowingAccordionContents ? 100 : .none)
                .background(Rectangle().fill(Color.white).shadow(color: Color.black, radius: 1, x: 0, y: 0))
            
            Button(action: { isShowingAccordionContents.toggle() }, label: { Text(btnText) })
                .foregroundColor(Color.black)
                .frame(maxWidth: .infinity)
                .background(Rectangle().fill(Color.white).shadow(color: Color.black, radius: 1, x: 0, y: 0))
        }
    }
}

struct HomeView: View {
    @State private var accordionList = Accordion.all()
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(accordionList, id: \.btnText) { data in
                data
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

