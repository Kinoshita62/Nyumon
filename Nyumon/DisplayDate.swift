//
//  DisplayDate.swift
//  Nyumon
//
//  Created by USER on 2024/07/11.
//

import SwiftUI

struct DisplayDate: View {
    @State var theDate = Date()

    var dateFormat1: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.dateStyle = .full
        df.timeStyle = .short
        return df
    }
    
    var dateFormat2: DateFormatter{
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.calendar = Calendar(identifier: .japanese)
        df.dateFormat = "令和yy(YYYY)年M月dd日(E)HH時mm分"
        return df
    }
    
    var body: some View {
        VStack {
            Text(dateFormat1.string(from: theDate))
            Text(dateFormat2.string(from: theDate))
            DatePicker(selection: $theDate, label: {EmptyView()})
                .environment(\.locale, Locale(identifier: "ja_JP"))
                .frame(width: 200, height: 40)
                .padding()
        }
    }
}

#Preview {
    DisplayDate()
}
