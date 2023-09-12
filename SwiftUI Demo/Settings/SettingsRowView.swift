//
//  SettingsRowView.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 12/09/23.
//

import SwiftUI

struct SettingsRowView: View {
    let item: SettingsItem
    
    var body: some View {
        HStack(spacing: 20) {
            Image(item.image.rawValue)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 22)
            Text(item.rawValue)
        }
        .frame(maxHeight: .zero)
        .listRowSeparator(.hidden)
        .padding()
    }
}

struct SettingsRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(item: SettingsItem.editProfile)
            .previewLayout(.sizeThatFits)
    }
}
