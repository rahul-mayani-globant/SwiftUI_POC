//
//  TabContent.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import SwiftUI

// MARK: - Content
extension TabBarView {
    struct TabContent<V: View>: View {
        @Binding var height: CGFloat
        @ViewBuilder var content: () -> V
        
        var body: some View {
            GeometryReader { gp in
                content()
                    .onAppear {
                        height = gp.safeAreaInsets.bottom
                    }
                    .onChange(of: gp.size) { _ in
                        height = gp.safeAreaInsets.bottom
                    }
            }
        }
    }
}
