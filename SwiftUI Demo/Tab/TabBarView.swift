//
//  TabBarView.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import SwiftUI

struct TabBarView: View {
    let data: TabBarModel
    
    @State private var selection: TabBarModel.Tab = .profile
    @State private var tbHeight: CGFloat = 49
        
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selection) {
                ForEach(data.items, id: \.tab) { item in
                    TabContent(height: $tbHeight) {
                        switch item.tab {
                        case .profile:
                            ProfileView(viewModel: ProfileViewModel())
                        case .add:
                            EmptyView()
                        case .settings:
                            SettingsView(data: .mock)
                        }
                    }.tabItem {
                        Image((selection == item.tab ? item.selectedIcon : item.unSelectedIcon).rawValue)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }

            TabSelection(height: tbHeight)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(data: .mock)
    }
}
