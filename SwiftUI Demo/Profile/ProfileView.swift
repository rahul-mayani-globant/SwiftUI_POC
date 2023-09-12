//
//  ProfileView.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel: ProfileViewModel
    
    @State private var selectedTab: TextTabBar.Tab = .photos
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Image(viewModel.userData.coverImage)
                    .resizable()
                
                VStack {
                    CircleImage(image: UIImage(named: viewModel.userData.profileImage) ?? UIImage())
                    
                    Text(viewModel.userData.name)
                        .font(.title2)
                        .foregroundColor(AppAssets.SDColor.darkBlue)
                    
                    Spacer()
                    
                    Text(viewModel.userData.designation)
                        .font(.subheadline)
                        .foregroundColor(AppAssets.SDColor.darkGray)
                    
                    Label {
                        Text(viewModel.userData.location)
                            .font(.subheadline)
                            .foregroundColor(AppAssets.SDColor.darkGray)
                    }  icon: {
                        Image(AppAssets.SDImage.location.rawValue)
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                    
                    Spacer(minLength: 20)
                    
                    HStack(alignment: .center, spacing: 30) {
                        CountLabelView(title: "followers", count: viewModel.userData.followers)
                        CountLabelView(title: "following", count: viewModel.userData.following)
                        CountLabelView(title: "likes", count: viewModel.userData.likes)
                    }
                    
                    Spacer(minLength: 20)
                    
                    HStack(alignment: .center) {
                        ButtonView(title: "Edit profile", type: .profile)
                        ButtonView(title: "Add friends", type: .profile)
                    }
                    
                }.offset(y: -75)
                
                TextTabBar(tabIndex: $selectedTab)
                    .offset(y: -50)
                
                Divider()
                    .padding(EdgeInsets(top: .zero, leading: 20, bottom: .zero, trailing: 20))
                    .offset(y: -50)
                                
                ProfileGridView(data: viewModel.photos)
                    .offset(y: -40)
            }
            .scrollIndicators(.hidden)
            .edgesIgnoringSafeArea([.top])
        }
        .onChange(of: selectedTab) { newValue in
            viewModel.updatePhotos(tab: newValue)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(viewModel: ProfileViewModel())
    }
}
