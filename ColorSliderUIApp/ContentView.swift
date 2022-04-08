//
//  ContentView.swift
//  ColorSliderUIApp
//
//  Created by Юлия Алдохина on 29/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.5)
                .ignoresSafeArea()
            VStack {
               ColorView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                    .padding(.bottom, 40.0)
                SliderStack(value: $redSliderValue, color: .red)
                SliderStack(value: $greenSliderValue, color: .green)
                SliderStack(value: $blueSliderValue, color: .blue)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

