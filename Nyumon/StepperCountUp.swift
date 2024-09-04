//
//  StepperCountUp.swift
//  Nyumon
//
//  Created by USER on 2024/07/09.
//

import SwiftUI

struct StepperCountUp: View {
    @State var kosu: Int = 0
    let tanka = 240
    let tax = 0.1
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("1個\(tanka)円")
            Stepper(value: $kosu, in: 0...10, step: 2) {
                Text("個数:\(kosu)")
            }
            .frame(width: 200)
            Text("料金:\(calc(kosu))円").font(.headline) + Text("(税込)").font(.footnote)
        }

    }
    
    func calc(_ num: Int) -> Int {
        var price = tanka * num
        price = Int(Double(price) * (1 + tax))
        return price
        
    }
}

#Preview {
    StepperCountUp()
}
