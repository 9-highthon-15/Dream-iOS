//
//  CustomTextStyle.swift
//  highthon
//
//  Created by 최시훈 on 2/17/24.
//

import SwiftUI

struct CustomTextStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .foregroundColor(Color.main900)
            .background(
                RoundedRectangle(cornerRadius: 9)
                
                    .stroke(Color.main900)
                    .padding([.top, .bottom, .trailing, .leading],5)
                    .cornerRadius(9)
            )
    }
}
