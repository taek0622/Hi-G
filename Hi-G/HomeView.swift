//
//  HomeView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/01.
//

import SwiftUI

extension Accordion {
    static func all() -> [Accordion] {
        return [
            Accordion(btnText: "Introduction", contentsText: "Hi-G는 글만으로는 애매모호해서 이해하기 어려운 HIG를 직접 손으로 만져보면서 이해할 수 있도록 하기위해 만들어진 어플리케이션입니다.\nHi-G와 함께 심오한 HIG의 세계에 가벼운 마음으로 떠나볼까요~?"),
            Accordion(btnText: "What is HIG", contentsText: "HIG는 Apple에서 제공하는 Apple 플랫폼에서의 어플리케이션 가이드라인입니다."),
            Accordion(btnText: "iOS Design Themes", contentsText: "iOS는 Clarity, Deference, Depth라는 세 가지의 주요한 테마를 가집니다."),
            Accordion(btnText: "Design Principles", contentsText: "역량을 최대화 하기 위해, 앱의 정체성을 생각할 때 숙지해야할 6가지 원리가 있습니다.")
        ]
    }
}

struct Accordion: View {
    @State private var isShowingAccordionContents = false

    var btnText: String
    var contentsText: String
    
    var body: some View {
//        ZStack(alignment: .top) {
//            VStack {
//                Spacer()
//                    .frame(minHeight: 0, maxHeight: isShowingAccordionContents ? 50 : 0)
//                Text(contentsText)
//            }
//            .padding(10)
//            .frame(maxWidth: .infinity, minHeight: .none, maxHeight: isShowingAccordionContents ? 150 : .none, alignment: .leading)
//            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
//
//            Button(action: { isShowingAccordionContents.toggle() }, label: {
//                VStack {
//                    HStack {
//                        Text(btnText)
//                            .bold()
//                            .font(.system(size: 20))
//                            .foregroundColor(Color.black)
//                        Spacer()
//                        Image(systemName: isShowingAccordionContents ? "chevron.up.circle.fill" : "chevron.down.circle.fill")
//                            .resizable()
//                            .frame(width: 26, height: 26)
//                            .foregroundColor(Color.green)
//                    }
//                    .padding(.horizontal, 10)
//                }
//            })
//                .frame(maxWidth: .infinity, maxHeight: 50)
//                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
//        }
        Button(action: { isShowingAccordionContents.toggle() }, label: {
            HStack {
                Text(btnText)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color.black)
                Spacer()
                Image(systemName: isShowingAccordionContents ? "chevron.up.circle.fill" : "chevron.down.circle.fill")
                    .resizable()
                    .frame(width: 26, height: 26)
                    .foregroundColor(Color.green)
            }
        })
        if isShowingAccordionContents {
            Text(contentsText)
        }
    }
}

struct HomeView: View {
    @State private var accordionList = Accordion.all()
    
    var body: some View {
//        VStack(spacing: 0) {
//            ForEach(accordionList, id: \.btnText) { data in
//                data
//            }
//        }
//        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 0))
//        .frame(maxHeight: .infinity, alignment: .top)
        List {
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

