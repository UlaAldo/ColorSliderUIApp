//
//  SliderStack.swift
//  ColorSliderUIApp
//
//  Created by Юлия Алдохина on 06/04/22.
//

import SwiftUI

struct SliderStack: View {
    @Binding var value: Double
    @State private var num = ""
    @State private var alert = false
    
    let color: Color
    
    
    var body: some View {
            HStack {
                Text("\(lround(value))").foregroundColor(.white)
                    .frame(width: 50, height: 30)
                Slider(value: $value, in: 0...255, step: 1)
                    .tint(color)
                    .onChange(of: value) { newValue in
                        num = "\(lround(newValue))"
                    }
                TextField("\(lround(value))", text: $num) { checkNum() }
                    .frame(width: 60, height: 30)
                    .background(Color.white)
                    .cornerRadius(8)
                    .multilineTextAlignment(.center)
                    .alert("Wrong format", isPresented: $alert, actions: {}) { Text("Use the numeric format: 0 - 255") }
        }
      
    }
    private func checkNum(){
        if let num = Int(num), (0...255).contains(num) {
            value = Double(num)
        } else {
            alert.toggle()
            num = ""
        }
    }
}

struct SliderStack_Previews: PreviewProvider {
    static var previews: some View {
        SliderStack(value: .constant(150), color: .blue)
    }
}
