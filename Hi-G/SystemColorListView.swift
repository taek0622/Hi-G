//
//  SystemColorListView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/05.
//

import SwiftUI

struct SystemColor: View {
    var colorName: Color
    
    var body: some View {
        HStack {
            Circle()
                .fill(colorName)
                .frame(width: 30, height: 30)
            Spacer()
        }
    }
}

struct SystemColorListView: View {
    @State private var isCopied = false
    
    var body: some View {
        List {
            Group() {
                Button(action: {
                    UIPasteboard.general.string = "Color.red"
                    isCopied = true
                }, label: {
                    HStack {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 30, height: 30)
                        Spacer()
                        Text("Color.red")
                    }
                })
                Button(action: {
                    UIPasteboard.general.string = "Color.orange"
                    isCopied = true
                }, label: {
                    HStack {
                        Circle()
                            .fill(Color.orange)
                            .frame(width: 30, height: 30)
                        Spacer()
                        Text("Color.orange")
                    }
                })
                Button(action: {
                    UIPasteboard.general.string = "Color.yellow"
                    isCopied = true
                }, label: {
                    HStack {
                        Circle()
                            .fill(Color.yellow)
                            .frame(width: 30, height: 30)
                        Spacer()
                        Text("Color.yellow")
                    }
                })
                Button(action: {
                    UIPasteboard.general.string = "Color.green"
                    isCopied = true
                }, label: {
                    HStack {
                        Circle()
                            .fill(Color.green)
                            .frame(width: 30, height: 30)
                        Spacer()
                        Text("Color.green")
                    }
                })
                Button(action: {
                    UIPasteboard.general.string = "Color.mint"
                    isCopied = true
                }, label: {
                    HStack {
                        Circle()
                            .fill(Color.mint)
                            .frame(width: 30, height: 30)
                        Spacer()
                        Text("Color.mint")
                    }
                })
                Button(action: {
                    UIPasteboard.general.string = "Color.teal"
                    isCopied = true
                }, label: {
                    HStack {
                        Circle()
                            .fill(Color.teal)
                            .frame(width: 30, height: 30)
                        Spacer()
                        Text("Color.teal")
                    }
                })
                Button(action: {
                    UIPasteboard.general.string = "Color.cyan"
                    isCopied = true
                }, label: {
                    HStack {
                        Circle()
                            .fill(Color.cyan)
                            .frame(width: 30, height: 30)
                        Spacer()
                        Text("Color.cyan")
                    }
                })
                Button(action: {
                    UIPasteboard.general.string = "Color.blue"
                    isCopied = true
                }, label: {
                    HStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 30, height: 30)
                        Spacer()
                        Text("Color.blue")
                    }
                })
                Button(action: {
                    UIPasteboard.general.string = "Color.indigo"
                    isCopied = true
                }, label: {
                    HStack {
                        Circle()
                            .fill(Color.indigo)
                            .frame(width: 30, height: 30)
                        Spacer()
                        Text("Color.indigo")
                    }
                })
            }
            Button(action: {
                UIPasteboard.general.string = "Color.purple"
                isCopied = true
            }, label: {
                HStack {
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 30, height: 30)
                    Spacer()
                    Text("Color.purple")
                }
            })
            Button(action: {
                UIPasteboard.general.string = "Color.pink"
                isCopied = true
            }, label: {
                HStack {
                    Circle()
                        .fill(Color.pink)
                        .frame(width: 30, height: 30)
                    Spacer()
                    Text("Color.pink")
                }
            })
            Button(action: {
                UIPasteboard.general.string = "Color.brown"
                isCopied = true
            }, label: {
                HStack {
                    Circle()
                        .fill(Color.brown)
                        .frame(width: 30, height: 30)
                    Spacer()
                    Text("Color.brown")
                }
            })
            .alert("시스템 색상 이름이 복사되었습니다.", isPresented: $isCopied, actions: {})
        }
        .navigationTitle("System Color")
    }
}

struct SystemColorListView_Previews: PreviewProvider {
    static var previews: some View {
        SystemColorListView()
    }
}
