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
            Accordion(btnText: "iOS Design Themes", contentsText: "iOS는 Clarity, Deference, Depth라는 세 가지의 주요한 테마를 가집니다.\n\nClarity는 시스템 전체를 볼때, 문자는 각각의 크기마다 읽기 쉬우며, 아이콘은 정확 및 뚜렷하고, 장식은 섬세하고 적절하며, 기능에 명확히 집중해 디자인에 동기를 부여합니다. 네거티브 스페이스, 색, 서체, 그래픽 그리고 인터페이스의 요소들은 중요한 내용을 미묘하게 강조하고, 상호작용성을 전달합니다.\n\nDeference는 유연한 움직임과 아름다운 인터페이스는 사람들이 하지 않고 내용을 이해하고, 상호작용하는데 도움을 줍니다. 내용은 대개 화면의 전체를 채우나, 반투명과 블러는 더 있음을 암시합니다. 베젤, 그라디언트와 드롭 섀도(그림자) 사용을 최소화 함으로서 인터페이스를 가볍게 만들고 내용을 다른 무엇보다 중요하게 만듭니다.\n\nDepth는 뚜렷하게 구분되는 시각 레이어와 사실적인 모션은 위계를 전달하고, 활기를 주며 이해를 돕습니다. 터치와 발견 가능성은 즐거움을 높이고 맥락을 잃지 않으면서 기능과 추가 내용에 접근할 수 있게 합니다. 트랜지션은 내용을 탐색하는 동안 깊이를 인지하는데 도움울 줍니다."),
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

