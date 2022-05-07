//
//  SliderStepperView.swift
//  Hi-G
//
//  Created by 김민택 on 2022/05/04.
//

import SwiftUI

struct SliderView: View {
    @State private var cntSlider = 0.0
    
    var body: some View {
        VStack {
            Slider(value: $cntSlider, in: -100...100, step: 0.1)
            Text("\(cntSlider)")
        }
        .padding(.horizontal, 16)
    }
}

struct StepperView: View {
    @State private var cntStepper = 0
    
    var body: some View {
        VStack {
            Stepper(value: $cntStepper, in: 0...6) {
                Text("\(cntStepper)")
            }
        }
        .padding(.horizontal, 16)
    }
}

struct SliderStepperView: View {
    @State private var selectedTab = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            SliderView().tabItem({
                Image(systemName: "house")
                Text("Slider")
            }).tag(1)
            
            StepperView().tabItem({
                Image(systemName: "house")
                Text("Stepper")
            }).tag(2)
        }
        .navigationTitle("Sliders / Steppers")
    }
}

struct SliderStepperView_Previews: PreviewProvider {
    static var previews: some View {
        SliderStepperView()
    }
}
