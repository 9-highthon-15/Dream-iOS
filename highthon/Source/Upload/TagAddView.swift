//
//  TagAddView.swift
//  highthon
//
//  Created by 노가현 on 2/18/24.
//

import SwiftUI

struct TagAddView: View {
    @Binding var tags: [String]

    let layout = [
        GridItem(.adaptive(minimum: 100))
    ]

    var body: some View {
        HStack {
            ForEach(tags, id: \.self) { tag in
                HStack {
                    Button {
                        if let index = tags.firstIndex(of: tag) {
                            tags.remove(at: index)
                        }
                    } label: {
                        HStack {
                            Text(tag)
                                .font(.custom("Pretendard-SemiBold", size: 14))
                                .foregroundColor(Color.gray900)
                                .padding(.leading, 15)
                                .padding(.vertical, 8)
                            Image("x")
                                .padding(.trailing, 15)
                        }
                        .background(Color.main50)
                        .cornerRadius(16)
                    }
                }
            }
        }
    }
}
