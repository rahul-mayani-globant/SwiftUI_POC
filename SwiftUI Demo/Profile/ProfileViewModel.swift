//
//  ProfileViewModel.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import SwiftUI

final class ProfileViewModel: ObservableObject {
    let userData: ProfileModel
    @Published var photos: [String]
    
    init() {
        userData = .mock
        photos = ProfileModel.mockPhotos
    }
}

extension ProfileViewModel {
    func updatePhotos(tab: TextTabBar.Tab) {
        self.photos = tab == .photos ? ProfileModel.mockPhotos : ProfileModel.mockLikePhotos
    }
}
