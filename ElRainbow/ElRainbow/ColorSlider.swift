//
//  ColorSlider.swift
//  ElRainbow
//
//  Created by Andrei Konstantinov on 31/01/2020.
//  Copyright © 2020 8of. All rights reserved.
//

import SwiftUI

struct ColorSlider : View {
    @Binding var value: Double
    var textColor: Color
    var body: some View {
        HStack {
            Text("0").foregroundColor(textColor)
            Slider(value: $value)
            Text("255").foregroundColor(textColor)
        }
        .padding()
    }
}


