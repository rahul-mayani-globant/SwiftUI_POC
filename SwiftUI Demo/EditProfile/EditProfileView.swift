//
//  EditProfileView.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 12/09/23.
//

import UIKit
import SwiftUI

struct EditProfileView: View {
    @Environment(\.presentationMode) var presentation
    let data: EditProfileModel
    
    @State private var image = UIImage(named: AppAssets.SDImage.profile.rawValue) ?? UIImage()
    @State private var showImagePicker: Bool = false
    
    var body: some View {
        ScrollView {
            Spacer(minLength: 20)
            
            VStack(spacing: 20) {
                CircleImageCamera(image: image, showImagePicker: $showImagePicker)
                
                Spacer()
                
                ForEach(data.textFields, id:\.self) { textFiled in
                    TextFieldView(title: textFiled.title,
                                  placeHolder: textFiled.placeHolder,
                                  type: textFiled.type,
                                  value: textFiled.text)
                }
                
                Spacer()
                
                ButtonView(title: "Save changes", type: .editProfile)
                    .onTapGesture {
                        withAnimation {
                            presentation.wrappedValue.dismiss()
                        }
                    }
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(sourceType: .photoLibrary, selectedImage: $image)
            }
            .navigationTitle(data.title.capitalized)
            .navigationBarTitleDisplayMode(.inline)
            
            Spacer(minLength: 50)
        }
        .scrollIndicators(.hidden)
        .modifier(DismissingKeyboard())
    }
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView(data: .mock)
    }
}
