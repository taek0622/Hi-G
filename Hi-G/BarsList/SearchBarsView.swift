//
//  SearchBarsView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/03.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText = ""
    @Binding var isClearButtonVisible: Bool
    @Binding var isCancelButtonVisible: Bool
    @Binding var isScopeBarVisible: Bool
    @State private var selectedScope = 1
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color("LightGray"))
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search task..", text: $searchText)
                        Button(action: { searchText = "" }, label: {
                            if isClearButtonVisible {
                                Image(systemName: "xmark.circle.fill")
                            }
                        })
                    }
                    .foregroundColor(Color.gray)
                    .padding(10)
                }
                Button(action: { searchText = "" }, label: {
                    if isCancelButtonVisible {
                        Text("Cancel")
                    }
                })
            }
            .frame(height: 40)
            if isScopeBarVisible {
                Picker("", selection: $selectedScope, content: {
                    Text("All").tag(1)
                    Text("Current").tag(2)
                })
                .pickerStyle(.segmented)
            }
        }
    }
}

struct SearchBarsView: View {
    @State private var selectPickerItemIndex = 0
    @State private var isClearButtonVisible = false
    @State private var isCancelButtonVisible = false
    @State private var isScopeBarVisible = false
    
    var body: some View {
        VStack {
            SearchBar(isClearButtonVisible: self.$isClearButtonVisible, isCancelButtonVisible: self.$isCancelButtonVisible, isScopeBarVisible: self.$isScopeBarVisible)
                .frame(height: 80, alignment: .top)
            Divider()
            Toggle("Clear", isOn: $isClearButtonVisible)
            Toggle("Cancel", isOn: $isCancelButtonVisible)
            Toggle("Scope Bar", isOn: $isScopeBarVisible)
                .tint(Color.red)
            if isScopeBarVisible {
                Text("Scope Bar를 사용하면 사람들이 검색 범위를 좁힐 수 있게 도움이 되지만, 검색 결과를 개선하는 것이 더 좋은 방법입니다.")
                    .padding(10)
                    .foregroundColor(Color.white)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.red))
            }
            Spacer()
        }
        .padding(.horizontal, 16)
        .navigationTitle("Search Bars")
    }
}

struct SearchBarsView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarsView()
    }
}

/*
 icon placeholder x cancel
 toggle button
 clear none ok
 cancel none ok
 
 placeholder
 introductory text
 
 scope bar => ?
 */
