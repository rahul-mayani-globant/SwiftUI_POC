//
//  ButtonView.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 12/09/23.
//

import SwiftUI

enum ButtonViewType {
    case profile, editProfile
}

struct ButtonView: View {
    let title: String
    let type: ButtonViewType
    
    private var padding: CGFloat {
        type == .editProfile ? 12 : 10
    }
    
    var body: some View {
        Text(title)
            .font(type == .editProfile ? .title2 : .body)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: padding, leading: padding * 2, bottom: padding, trailing: padding * 2))
            .background(AppAssets.SDColor.darkBlue)
            .cornerRadius(type == .editProfile ? 5 : 15)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ButtonView(title: "Save", type: .editProfile)
            ButtonView(title: "Add", type: .profile)
        }.previewLayout(.sizeThatFits)
    }
}
