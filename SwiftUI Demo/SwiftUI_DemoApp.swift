//
//  SwiftUI_DemoApp.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 05/09/23.
//

import SwiftUI

@main
struct SwiftUI_DemoApp: App {
    var body: some Scene {
        WindowGroup {
            TabBarView(data: .mock)
        }
    }
}
