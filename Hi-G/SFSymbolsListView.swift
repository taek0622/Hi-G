//
//  SFSymbolsListView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/05.
//

import SwiftUI

struct SymbolElement: View {
    @State private var isCopied = false
    
    var symbolName: String
    
    var body: some View {
        Button(action: {
            UIPasteboard.general.string = symbolName
            isCopied = true
        }, label: {
            HStack {
                Image(systemName: symbolName)
                Spacer()
                Text(symbolName)
            }
        })
        .foregroundColor(Color.black)
        .alert("아이콘 이름이 복사되었습니다.", isPresented: $isCopied, actions: {})
    }
}

struct SFSymbolsAll: View {
    var body: some View {
        List {
            ForEach(allSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("전체")
    }
}

struct SFSymbolsNew: View {
    var body: some View {
        List {
            ForEach(newSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("새로운 기호")
    }
}

struct SFSymbolsMulticolor: View {
    var body: some View {
        List {
            ForEach(multicolorSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("여러 가지 색상")
    }
}

struct SFSymbolsCommunication: View {
    var body: some View {
        List {
            ForEach(communicationSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("통신")
    }
}

struct SFSymbolsWeather: View {
    var body: some View {
        List {
            ForEach(weatherSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("날씨")
    }
}

struct SFSymbolsObjectsTools: View {
    var body: some View {
        List {
            ForEach(objectsToolsSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("사물 및 도구")
    }
}

struct SFSymbolsDevices: View {
    var body: some View {
        List {
            ForEach(devicesSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("기기")
    }
}

struct SFSymbolsGaming: View {
    var body: some View {
        List {
            ForEach(gamingSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("게임")
    }
}

struct SFSymbolsConnectivity: View {
    var body: some View {
        List {
            ForEach(connectivitySymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("연결")
    }
}

struct SFSymbolsTransportation: View {
    var body: some View {
        List {
            ForEach(transportationSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("교통")
    }
}

struct SFSymbolsHuman: View {
    var body: some View {
        List {
            ForEach(humanSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("인간")
    }
}

struct SFSymbolsNature: View {
    var body: some View {
        List {
            ForEach(natureSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("자연")
    }
}

struct SFSymbolsEditing: View {
    var body: some View {
        List {
            ForEach(editingSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("편집")
    }
}

struct SFSymbolsTextFormatting: View {
    var body: some View {
        List {
            ForEach(textFormattingSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("텍스트 포맷")
    }
}

struct SFSymbolsMedia: View {
    var body: some View {
        List {
            ForEach(mediaSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("미디어")
    }
}

struct SFSymbolsKeyboard: View {
    var body: some View {
        List {
            ForEach(keyboardSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("키보드")
    }
}

struct SFSymbolsCommerce: View {
    var body: some View {
        List {
            ForEach(commerceSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("상업")
    }
}

struct SFSymbolsTime: View {
    var body: some View {
        List {
            ForEach(timeSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("시간")
    }
}

struct SFSymbolsHealth: View {
    var body: some View {
        List {
            ForEach(healthSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("건강")
    }
}

struct SFSymbolsShapes: View {
    var body: some View {
        List {
            ForEach(shapesSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("도형")
    }
}

struct SFSymbolsArrows: View {
    var body: some View {
        List {
            ForEach(arrowsSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("화살표")
    }
}

struct SFSymbolsIndices: View {
    var body: some View {
        List {
            ForEach(indicesSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("인덱스")
    }
}

struct SFSymbolsMath: View {
    var body: some View {
        List {
            ForEach(mathSymbolList, id: \.self) { symbol in
                SymbolElement(symbolName: symbol)
            }
        }
        .navigationTitle("수학")
    }
}

struct SFSymbolsListView: View {
    var body: some View {
        List {
            NavigationLink(destination: SFSymbolsAll(), label: {
                Image(systemName: "square.grid.2x2")
                Text("전체")
                Spacer()
                Text("3,316")
            })
            Group() {
                NavigationLink(destination: SFSymbolsNew(), label: {
                    Image(systemName: "sparkles")
                    Text("새로운 기호")
                    Spacer()
                    Text("7")
                })
                NavigationLink(destination: SFSymbolsMulticolor(), label: {
                    Image(systemName: "paintpalette")
                    Text("여러 가지 색상")
                    Spacer()
                    Text("873")
                })
                NavigationLink(destination: SFSymbolsCommunication(), label: {
                    Image(systemName: "message")
                    Text("통신")
                    Spacer()
                    Text("135")
                })
                NavigationLink(destination: SFSymbolsWeather(), label: {
                    Image(systemName: "cloud.sun")
                    Text("날씨")
                    Spacer()
                    Text("74")
                })
                NavigationLink(destination: SFSymbolsObjectsTools(), label: {
                    Image(systemName: "folder")
                    Text("사물 및 도구")
                    Spacer()
                    Text("575")
                })
                NavigationLink(destination: SFSymbolsDevices(), label: {
                    Image(systemName: "keyboard")
                    Text("기기")
                    Spacer()
                    Text("251")
                })
                NavigationLink(destination: SFSymbolsGaming(), label: {
                    Image(systemName: "gamecontroller")
                    Text("게임")
                    Spacer()
                    Text("117")
                })
                NavigationLink(destination: SFSymbolsConnectivity(), label: {
                    Image(systemName: "antenna.radiowaves.left.and.right")
                    Text("연결")
                    Spacer()
                    Text("71")
                })
                NavigationLink(destination: SFSymbolsTransportation(), label: {
                    Image(systemName: "car.fill")
                    Text("교통")
                    Spacer()
                    Text("49")
                })
                NavigationLink(destination: SFSymbolsHuman(), label: {
                    Image(systemName: "person.crop.circle")
                    Text("인간")
                    Spacer()
                    Text("172")
                })
            }
            Group() {
                NavigationLink(destination: SFSymbolsNature(), label: {
                    Image(systemName: "leaf")
                    Text("자연")
                    Spacer()
                    Text("46")
                })
                NavigationLink(destination: SFSymbolsEditing(), label: {
                    Image(systemName: "slider.horizontal.3")
                    Text("편집")
                    Spacer()
                    Text("80")
                })
                NavigationLink(destination: SFSymbolsTextFormatting(), label: {
                    Image(systemName: "textformat")
                    Text("텍스트 포맷")
                    Spacer()
                    Text("47")
                })
                NavigationLink(destination: SFSymbolsMedia(), label: {
                    Image(systemName: "playpause")
                    Text("미디어")
                    Spacer()
                    Text("79")
                })
                NavigationLink(destination: SFSymbolsKeyboard(), label: {
                    Image(systemName: "command")
                    Text("키보드")
                    Spacer()
                    Text("61")
                })
                NavigationLink(destination: SFSymbolsCommerce(), label: {
                    Image(systemName: "cart")
                    Text("상업")
                    Spacer()
                    Text("159")
                })
                NavigationLink(destination: SFSymbolsTime(), label: {
                    Image(systemName: "timer")
                    Text("시간")
                    Spacer()
                    Text("24")
                })
                NavigationLink(destination: SFSymbolsHealth(), label: {
                    Image(systemName: "heart")
                    Text("건강")
                    Spacer()
                    Text("51")
                })
                NavigationLink(destination: SFSymbolsShapes(), label: {
                    Image(systemName: "square.on.circle")
                    Text("도형")
                    Spacer()
                    Text("38")
                })
                NavigationLink(destination: SFSymbolsArrows(), label: {
                    Image(systemName: "arrow.forward")
                    Text("화살표")
                    Spacer()
                    Text("326")
                })
            }
            NavigationLink(destination: SFSymbolsIndices(), label: {
                Image(systemName: "a.circle")
                Text("인덱스")
                Spacer()
                Text("500")
            })
            NavigationLink(destination: SFSymbolsMath(), label: {
                Image(systemName: "x.squareroot")
                Text("수학")
                Spacer()
                Text("53")
            })
        }
        .navigationTitle("SF Symbols")
    }
}

struct SFSymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolsListView()
    }
}
