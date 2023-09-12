//
//  SettingsView.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 12/09/23.
//

import SwiftUI

struct SettingsView: View {
    let data: SettingsModel
        
    var body: some View {
        NavigationView {
            List {
                ForEach(data.sections, id:\.self) { section in
                    Section(header:
                        Text(section.section.rawValue)
                            .font(.headline)
                            .frame(minHeight: 40)
                    ) {
                        ForEach(section.items, id:\.self) { row in
                            if row == .editProfile {
                                ZStack(alignment: .leading) {
                                    SettingsRowView(item: row)
                                    NavigationLink(destination: {
                                        EditProfileView(data: .mock)
                                    }, label: {}).opacity(0)
                                }
                            } else {
                                SettingsRowView(item: row)
                            }
                        }
                    }
                    .modifier(SectionHeaderStyle())
                }
            }
            .scrollIndicators(.hidden)
            .scrollContentBackground(.hidden)
            .listStyle(.insetGrouped)
            .navigationTitle(data.title)
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(data: .mock)
    }
}
