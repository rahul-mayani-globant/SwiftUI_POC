//
//  CircleImage.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 07/09/23.
//

import SwiftUI

struct CircleImageCamera: View {
    let image: UIImage
    @Binding var showImagePicker: Bool
    
    var body: some View {
        ZStack {
            CircleImage(image: image)
            
            Image(AppAssets.SDImage.cameraSolar.rawValue)
                .offset(x: 60, y: 60)
                .onTapGesture {
                    withAnimation {
                        showImagePicker.toggle()
                    }
                }
        }
    }
}

struct CircleImage: View {
    let image: UIImage
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 170, height: 170)
            .clipShape(Circle())
            .padding(2)
            .overlay {
                Circle().stroke(AppAssets.SDColor.darkBlue, lineWidth: 1)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    @State static private var showImagePicker: Bool = false
    static var previews: some View {
        CircleImageCamera(image: UIImage(named: AppAssets.SDImage.profile.rawValue) ?? UIImage(), showImagePicker: $showImagePicker)
            .previewLayout(.sizeThatFits)
    }
}
