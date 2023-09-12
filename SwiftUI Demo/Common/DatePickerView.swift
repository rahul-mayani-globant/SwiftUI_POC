//
//  DatePickerView.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 06/09/23.
//

import SwiftUI

struct DatePickerView: View {
    @Binding var value: String
    @State private var selectedDate = Date()
    
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        return dateFormatter.string(from: selectedDate)
    }
    
    var body: some View {
        DatePicker(String(), selection: $selectedDate, in: ...Date.now, displayedComponents: .date)
            .presentationCompactAdaptation(.none)
            .frame(width: 300, height: 400)
            .datePickerStyle(GraphicalDatePickerStyle())
            .onChange(of: selectedDate, perform: { value in
                self.value = formattedDate
            })
            .onAppear {
                let dateFormatter = DateFormatter()
                dateFormatter.dateStyle = .long
                selectedDate = dateFormatter.date(from: value) ?? Date()
            }
    }
}

struct DatePicker_Previews: PreviewProvider {
    @State static private var value = String()
    static var previews: some View {
        DatePickerView(value: $value)
            .previewLayout(.sizeThatFits)
    }
}
