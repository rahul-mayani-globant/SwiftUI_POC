//
//  EditProfileModel.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 12/09/23.
//

import Foundation

struct EditProfileModel {
    let title: String
    let textFields: [TextFieldData]
}

extension EditProfileModel {
    static var mock: Self {
        EditProfileModel(title: SettingsItem.editProfile.rawValue,
                         textFields: [
                            TextFieldData(title: "Name", placeHolder: "Melissa Peters", type: .name),
                            TextFieldData(title: "Email", placeHolder: "melpeters@gmail.com", type: .email),
                            TextFieldData(title: "Password", placeHolder: "************", type: .password),
                            TextFieldData(title: "Date of Birth", placeHolder: "23/05/1995", type: .dropdown(.dob)),
                            TextFieldData(title: "Country/Region", placeHolder: "Nigeria", type: .dropdown(.country))
                        ])
    }
}
