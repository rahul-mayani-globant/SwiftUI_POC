//
//  CountLabel.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import SwiftUI

struct CountLabelView: View {
    let title: String
    let count: String
    
    var body: some View {
        VStack {
            Text(count)
                .font(.title).bold()
                .foregroundColor(AppAssets.SDColor.darkBlue)
            
            Text(title)
                .font(.subheadline)
                .foregroundColor(AppAssets.SDColor.darkGray)
        }
    }
}

struct CountLabel_Previews: PreviewProvider {
    @State static private var showImagePicker: Bool = false
    static var previews: some View {
        CountLabelView(title: "followers", count: "122")
            .previewLayout(.sizeThatFits)
    }
}
