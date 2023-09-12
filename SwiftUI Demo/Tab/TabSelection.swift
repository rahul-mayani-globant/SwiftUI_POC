//
//  TabSelection.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import SwiftUI

// MARK: - Selection
extension TabBarView {
    struct TabSelection: View, KeyboardReadable {
        let height: CGFloat
        
        @State private var isKeyboardVisible = false
        
        var body: some View {
            VStack {
                if isKeyboardVisible {
                    EmptyView()
                } else {
                    Spacer()
                    Divider()
                        .frame(maxWidth: .infinity, maxHeight: 2)
                        .foregroundColor(AppAssets.SDColor.lightBlack)
                        .offset(y: 101)
                    Curve()
                        .frame(maxWidth: .infinity, maxHeight: height)
                        .foregroundColor(AppAssets.SDColor.lightBlack)
                        .offset(y: 92.5)
                    CurveWhite()
                        .frame(maxWidth: .infinity, maxHeight: height)
                        .foregroundColor(.white)
                }
            }
            .ignoresSafeArea()
            .overlay(
                Circle().foregroundColor(AppAssets.SDColor.darkBlue)
                    .frame(height: 60).aspectRatio(contentMode: .fit)
                    .shadow(radius: 4)
                    .overlay(Image(AppAssets.SDImage.add.rawValue)
                        .font(.title)
                        .foregroundColor(.white))
                    .offset(y: -25)
                , alignment: .bottom)
            .onReceive(keyboardPublisher) { newIsKeyboardVisible in
                isKeyboardVisible = newIsKeyboardVisible
            }
        }
    }
}
