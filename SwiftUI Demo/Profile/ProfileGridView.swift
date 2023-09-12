//
//  ProfileGridView.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import SwiftUI


struct ProfileGridView: View {
    let data: [String]
    
    init(data: [String]) {
        self.data = data
    }
    
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: gridItemLayout, spacing: 15) {
            ForEach(data, id: \.self) { url in
                AsyncImage(url: URL(string: url)) { phase in
                    if let image = phase.image {
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                    } else if phase.error != nil {
                        AppAssets.SDColor.offWhite
                    } else {
                        ProgressView()
                    }
                }
                .frame(height: 160)
                .cornerRadius(5)
            }
        }
        .padding(EdgeInsets(top: .zero, leading: 20, bottom: .zero
                            , trailing: 20))
    }
}

struct ProfileGrid_Previews: PreviewProvider {
    static var previews: some View {
        ProfileGridView(data: ProfileModel.mockPhotos)
            .previewLayout(.sizeThatFits)
    }
}
