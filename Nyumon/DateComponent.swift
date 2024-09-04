//
//  DateComponent.swift
//  Nyumon
//
//  Created by USER on 2024/07/11.
//

import SwiftUI

struct DateComponent: View {
    @State var theDate = Date()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            DatePicker("日付", selection: $theDate, displayedComponents: .date)
                .environment(\.locale, Locale(identifier: "ja_JP"))
                .frame(width: 200)
            
            DatePicker("時刻", selection: $theDate, displayedComponents: .hourAndMinute)
                .frame(width: 200)
            
            Text(theDate.description(with: Locale(identifier: "ja_JP")))
                .font(.footnote)
        }
        .padding()
        .border(Color.gray, width: 1)
    }
}

#Preview {
    DateComponent()
}
