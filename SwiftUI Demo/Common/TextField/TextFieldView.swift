//
//  TextFieldView.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import SwiftUI
import BottomSheet

struct TextFieldView: View {
    let title: String
    let placeHolder: String
    let type: TextFieldType
    @State var value: String
    
    @State private var selectedDate = Date()
    @State private var isShowDropdown: Bool = false
    
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        return dateFormatter.string(from: selectedDate)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title).font(.headline)
            
            Spacer()
            
            HStack {
                if type.isSecure {
                    SecureField(placeHolder, text: $value)
                        .tint(AppAssets.SDColor.darkBlue)
                        .disabled(type.isDisabled)
                        .keyboardType(type.keyboardType)
                } else {
                    TextField(placeHolder, text: $value)
                        .tint(AppAssets.SDColor.darkBlue)
                        .disabled(type.isDisabled)
                        .keyboardType(type.keyboardType)
                }
                if type.isDropdown {
                    Image(AppAssets.SDImage.downArrow.rawValue)
                        .offset(y: -5)
                }
            }
            .padding(10)
            .frame(maxHeight: 40)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(AppAssets.SDColor.lightBlack, lineWidth: 1)
            )
            .onTapGesture {
                if type.isDropdown {
                    isShowDropdown.toggle()
                }
            }
            .bottomSheet(isPresented: $isShowDropdown,
                         prefersGrabberVisible: true,
                         prefersScrollingExpandsWhenScrolledToEdge: true,
                         prefersEdgeAttachedInCompactHeight: false,
                         widthFollowsPreferredContentSizeWhenEdgeAttached: false) {
                if type.dropdownType == .dob {
                    DatePickerView(value: $value)
                } else {
                    CountryPickerView(value: $value)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct TextField_Previews: PreviewProvider {
    @State static private var value = String()
    static var previews: some View {
        TextFieldView(title: "Name", placeHolder: "Joy", type: .dropdown(.country), value: value)
            .frame(maxHeight: 70)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
