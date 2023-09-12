//
//  TabBarModel.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import Foundation

struct TabBarModel {
    let items: [Item]
    
    enum Tab: String, Hashable {
        case profile
        case add
        case settings
    }
    
    struct Item {
        let tab: Tab
        let selectedIcon: AppAssets.SDImage
        let unSelectedIcon: AppAssets.SDImage
    }
}

extension TabBarModel {
    static var mock: Self {
        TabBarModel(items: [
            Item(tab: .profile, selectedIcon: .homeSelected, unSelectedIcon: .homeUnSelected),
            Item(tab: .add, selectedIcon: .add, unSelectedIcon: .add),
            Item(tab: .settings, selectedIcon: .settingsSelected, unSelectedIcon: .settingsUnSelected)
        ])
    }
}
