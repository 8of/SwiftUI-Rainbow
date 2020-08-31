//
//  ContentView.swift
//  ElRainbow
//
//  Created by Andrei Konstantinov on 31/01/2020.
//  Copyright © 2020 8of. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var rCurrent: Double
    @State var gCurrent: Double
    @State var bCurrent: Double

    @State private var showAlert = false

    private let rTarget = Double.random(in: 0..<1)
    private let gTarget = Double.random(in: 0..<1)
    private let bTarget = Double.random(in: 0..<1)

    func computeScore() -> Int {
        let rDiff = rCurrent - rTarget
        let gDiff = gCurrent - gTarget
        let bDiff = bCurrent - bTarget
        let diff = sqrt(rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)
        return Int((1.0 - diff) * 100.0 + 0.5)
    }

    var body: some View {
        VStack {
            HStack {
                VStack {
                    Rectangle().foregroundColor(Color(red: rTarget, green: gTarget, blue: bTarget, opacity: 1.0))
                    Text("Match this color").font(.system(size: UIFont.smallSystemFontSize))
                }
                VStack {
                    Rectangle().foregroundColor(Color(red: rCurrent, green: gCurrent, blue: bCurrent, opacity: 1.0))
                    HStack {
                        Text("R: \(Int(rCurrent * 255.0))").font(.system(size: UIFont.smallSystemFontSize))
                        Text("G: \(Int(gCurrent * 255.0))").font(.system(size: UIFont.smallSystemFontSize))
                        Text("B: \(Int(bCurrent * 255.0))").font(.system(size: UIFont.smallSystemFontSize))
                    }
                }
            }

            Button(
                action: {
                    self.showAlert = true
                },
                label: {
                    Text("Check!")
                }
            )
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Color alignment"), message: Text("\(computeScore())%"))
                }


            VStack {
                ColorSlider(value: $rCurrent, textColor: .red)
                ColorSlider(value: $gCurrent, textColor: .green)
                ColorSlider(value: $bCurrent, textColor: .blue)

            }
        }

    }
}

struct ContentView_Previews : PreviewProvider {

    static var previews: some View {
        ContentView(rCurrent: 0.5, gCurrent: 0.5, bCurrent: 0.5)
    }

}


