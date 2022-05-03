//
//  AlertsView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/03.
//

import SwiftUI

struct AlertsView: View {
    @State private var isShowingAlerts = false
    @State private var cntAlertButton = 1
    
    var body: some View {
        VStack {
            Button(action: {
                isShowingAlerts = true
            }, label: {
                Text("Show Alerts")
            })
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: Color.black, radius: 1, x: 0, y: 0))
            .alert("Alert Title", isPresented: $isShowingAlerts) {
                Button(action: {}, label: { Text("normal") })
                if cntAlertButton >= 2 {
                    Button(role: .cancel, action: {}, label: { Text(".cancel") })
                }
                if cntAlertButton >= 3 {
                    Button(role: .destructive, action: {}, label: {Text(".destructive")})
                }
            }
            Stepper(value: $cntAlertButton, in: 1...3) {
                HStack {
                    Text("버튼 개수: \(cntAlertButton)개")
                }
            }
            if cntAlertButton >= 2 {
                Text("만약 Alert의 버튼이 2개 이상일 때, role이 .cancel인 버튼이 한 개도 없다면, 최하단에 자동으로 Cancel 버튼이 생성됩니다.")
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.red))
                    .foregroundColor(Color.white)
            }
        }
        .padding(.horizontal, 16)
        .navigationTitle("Alerts")
    }
}

struct AlertsView_Previews: PreviewProvider {
    static var previews: some View {
        AlertsView()
    }
}
