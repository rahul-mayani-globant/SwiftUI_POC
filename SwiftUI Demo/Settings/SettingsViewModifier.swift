//
//  SettingsViewModifier.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 12/09/23.
//

import SwiftUI

struct SectionHeaderStyle: ViewModifier {
    func body(content: Content) -> some View {
        Group {
            if #available(iOS 14, *) {
                AnyView(content.textCase(.none))
            } else {
                content
            }
        }
        .font(.body)
        .listRowBackground(AppAssets.SDColor.lightBlack.opacity(0.5))
        .listRowInsets(EdgeInsets())
        .foregroundColor(.black)
    }
}
