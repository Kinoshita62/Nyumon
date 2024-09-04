//
//  PickerDate.swift
//  Nyumon
//
//  Created by USER on 2024/07/11.
//

import SwiftUI

struct PickerDate: View {
    @State var theDate = Date()
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -7, to: Date())!
        let max = Calendar.current.date(byAdding: .month, value: 1, to: Date())!
        return min...max
    }
    
    
    var body: some View {
        DatePicker(selection: $theDate, in: dateClosedRange, label: { Text("日時") })
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .padding()
    }
}

#Preview {
    PickerDate()
}
