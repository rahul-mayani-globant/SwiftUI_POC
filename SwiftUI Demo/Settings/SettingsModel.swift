//
//  SettingsModel.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 12/09/23.
//

import Foundation

enum SettingsItem: String, Hashable {
    case editProfile = "Edit profile"
    case security = "Security"
    case notifications = "Notifications"
    case privacy = "Privacy"
    case subscription = "My Subscription"
    case helpSupport = "Help & Support"
    case termsPolicies = "Terms and Policies"
    case freeUpSpace = "Free up space"
    case dataSaver = "Data Saver"
    case reportProblem = "Report a problem"
    case addAccount = "Add account"
    case logout = "Log out"
    
    var image: AppAssets.SDImage {
        switch self {
        case .editProfile: return .userProfile
        case .security: return .security
        case .notifications: return .notifications
        case .privacy: return .privacyLock
        case .subscription: return .creditCard
        case .helpSupport: return .helpSupport
        case .termsPolicies: return .termsPolicies
        case .freeUpSpace: return .delete
        case .dataSaver: return .dataExploration
        case .reportProblem: return .reportProblem
        case .addAccount: return .userAccount
        case .logout: return .logout
        }
    }
}

enum SettingsSection: String, Hashable {
    case account = "Account"
    case supportAbout = "Support & About"
    case cacheCellular = "Cache & cellular"
    case actions = "Actions"
}

struct SettingsSectionModel: Hashable {
    let section: SettingsSection
    let items: [SettingsItem]
}

struct SettingsModel {
    let title: String
    let sections: [SettingsSectionModel]
}

extension SettingsModel {
    static var mock: Self {
        SettingsModel(title: "Settings",
                      sections: [
                        SettingsSectionModel(section: .account, items: [
                            .editProfile, .security, .notifications, .privacy
                        ]),
                        SettingsSectionModel(section: .supportAbout, items: [
                            .subscription, .helpSupport, .termsPolicies
                        ]),
                        SettingsSectionModel(section: .cacheCellular, items: [
                            .freeUpSpace, .dataSaver
                        ]),
                        SettingsSectionModel(section: .actions, items: [
                            .reportProblem, .addAccount, .logout
                        ])
                    ])
    }
}
