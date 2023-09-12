//
//  ProfileModel.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import Foundation

struct ProfileModel {
    let coverImage: String
    let profileImage: String
    let name: String
    let designation: String
    let location: String
    let followers: String
    let following: String
    let likes: String
}

extension ProfileModel {
    static var mock: Self {
        ProfileModel(coverImage: AppAssets.SDImage.rectangleCurve.rawValue,
                     profileImage: AppAssets.SDImage.profile.rawValue,
                     name: "Melissa peters",
                     designation: "Interior designer",
                     location: "Lagos, Nigeria",
                     followers: "122",
                     following: "67",
                     likes: "37K"
        )
    }

    static var mockPhotos: [String] {
        [
           "https://picsum.photos/id/1/300/450",
           "https://picsum.photos/id/2/300/450",
           "https://picsum.photos/id/3/300/450",
           "https://picsum.photos/id/4/300/450",
           "https://picsum.photos/id/5/300/450",
           "https://picsum.photos/id/6/300/450",
           "https://picsum.photos/id/7/300/450",
           "https://picsum.photos/id/8/300/450"
        ]
    }
    
    static var mockLikePhotos: [String] {
        [
            "https://picsum.photos/300/450",
            "https://picsum.photos/300/451",
            "https://picsum.photos/300/452",
            "https://picsum.photos/300/453"
        ]
    }
}
