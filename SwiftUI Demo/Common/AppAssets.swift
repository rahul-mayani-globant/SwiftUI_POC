//
//  AppAssets.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 08/09/23.
//

import SwiftUI

struct AppAssets {
    struct SDColor {
        static let darkBlue = Color("dark-blue")
        static let offWhite = Color("off-white")
        static let darkGray = Color("dark-gray")
        static let lightBlack = Color.black.opacity(0.13)
    }
    
    enum SDImage: String {
        case add
        /// Tab
        case homeSelected = "home-selected"
        case homeUnSelected = "home-unselected"
        case settingsSelected = "settings-selected"
        case settingsUnSelected = "settings-unselected"
        /// Settings
        case creditCard = "credit-card"
        case dataExploration = "data-exploration"
        case delete = "delete-ic"
        case helpSupport = "help-support"
        case logout
        case privacyLock = "privacy-lock"
        case notifications
        case reportProblem = "report-problem"
        case security
        case termsPolicies = "terms-policies"
        case userAccount = "user-account"
        case userProfile = "user-profile"
        /// Edit Profile
        case downArrow = "down-arrow"
        case cameraSolar = "camera-solar"
        case profile
        /// Profile
        case location = "location-on"
        case rectangleCurve = "rectangle-curve"
    }
}
