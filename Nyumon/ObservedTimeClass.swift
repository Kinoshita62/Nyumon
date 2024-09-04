//
//  ObservedTimeClass.swift
//  Nyumon
//
//  Created by USER on 2024/07/16.
//

import Foundation

class ValueMaker: ObservableObject {
    @Published var value2: Double = 0.0
    private var timer = Timer()
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            self.value2 = Double.random(in: 0...1)
        }
    }
}
