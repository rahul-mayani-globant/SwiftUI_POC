//
//  CountryPickerView.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 06/09/23.
//

import SwiftUI

enum CountryList: String, CaseIterable {
    case india
    case us = "United States"
    case uk = "united Kingdom"
    case nigeria
}

struct CountryPickerView: View {
    @Binding var value: String
    private let data = CountryList.allCases
    @State private var selectedIndex: Int = .zero
    
    var body: some View {
        Picker(String(), selection: $selectedIndex) {
            ForEach(data.indices, id: \.self) { index in
                Text(data[index].rawValue.capitalized)
            }
        }
        .pickerStyle(WheelPickerStyle())
        .onChange(of: selectedIndex, perform: { newValue in
            value = data[newValue].rawValue.capitalized
        })
        .onAppear {
            selectedIndex = data.firstIndex(where: { value == $0.rawValue.capitalized }) ?? .zero
        }
    }
}

struct CountryPicker_Previews: PreviewProvider {
    @State static private var value = String()
    static var previews: some View {
        CountryPickerView(value: $value)
            .previewLayout(.sizeThatFits)
    }
}
