//
//  TextFieldModel.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import SwiftUI

enum DropdownType {
    case dob, country
}

enum TextFieldType {
    case name, email, password, dropdown(DropdownType)
    
    var keyboardType: UIKeyboardType {
        switch self {
        case .name: return .namePhonePad
        case .email: return .emailAddress
        case .password, .dropdown: return .default
        }
    }
    
    var isSecure: Bool {
        switch self {
        case .name, .email, .dropdown: return false
        case .password: return true
        }
    }
    
    var isDisabled: Bool {
        switch self {
        case .name, .email, .password: return false
        case .dropdown: return true
        }
    }
    
    var isDropdown: Bool { isDisabled }
    
    var dropdownType: DropdownType? {
        switch self {
        case .name, .email, .password: return nil
        case .dropdown(let type): return type
        }
    }
}

final class TextFieldData: NSObject, ObservableObject {
    let title: String
    let placeHolder: String
    let type: TextFieldType
    
    @Published var text: String = ""
    
    init(title: String, placeHolder: String, type: TextFieldType) {
        self.title = title
        self.placeHolder = placeHolder
        self.type = type
    }
}
