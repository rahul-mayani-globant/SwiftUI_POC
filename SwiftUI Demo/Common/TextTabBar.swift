//
//  TextTabBar.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import SwiftUI

struct TextTabBar: View {
    enum Tab: String, CaseIterable {
        case photos, likes
    }
    
    @Binding var tabIndex: Tab
    
    var body: some View {
        HStack {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                TabBarButton(text: tab.rawValue.capitalized, isSelected: .constant(tabIndex == tab))
                    .frame(maxWidth: .infinity)
                    .onTapGesture { onButtonTapped(index: tab) }
            }
        }.padding(.horizontal)
    }
    
    private func onButtonTapped(index: Tab) {
        withAnimation { tabIndex = index }
    }
}

struct TabBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    
    var body: some View {
        Text(text)
            .font(.headline)
            .foregroundColor(isSelected ? AppAssets.SDColor.darkBlue : AppAssets.SDColor.darkGray.opacity(0.5))
    }
}

struct TextTabBar_Previews: PreviewProvider {
    @State static private var selected: TextTabBar.Tab = .photos
    static var previews: some View {
        TextTabBar(tabIndex: $selected)
            .previewLayout(.sizeThatFits)
    }
}
