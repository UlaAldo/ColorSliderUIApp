//
//  ColorView.swift
//  ColorSliderUIApp
//
//  Created by Юлия Алдохина on 06/04/22.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(Color(red: red / 255, green: green / 255, blue: blue / 255))
            .frame(height: 170)
            .overlay(RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white, lineWidth: 4))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 125, green: 125, blue: 125)
    }
}
