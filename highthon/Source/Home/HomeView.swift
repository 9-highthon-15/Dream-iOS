//
//  HomeView.swift
//  highthon
//
//  Created by 최시훈 on 2/17/24.
//

import SwiftUI
import UIKit

struct HomeView: View {
    @State var selectButton = false
    var body: some View {
            VStack(alignment: .leading) {
                Text("서울")
                    .foregroundColor(Color.gray900)
                    .font(.custom("Pretendard-Medium", size: 24))
                Spacer().frame(height: 21)
                HStack {
                    Button {
                        selectButton.toggle()
                    } label: {
                        HStack(spacing: 12) {
                            Text("전체")
                                .foregroundStyle(Color.gray900)
                                .frame(width: 52, height: 32)
                                .background(Color.main50)
                                .cornerRadius(16)
                        }
                    }
                    Button {
                        selectButton.toggle()
                    } label: {
                        Text("드려요")
                            .foregroundStyle(Color.main50)
                            .frame(width: 62, height: 32)
                            .background(Color.main300)
                            .cornerRadius(16)
                    }
                    Button {
                        selectButton.toggle()
                    } label: {
                        Text("받아요")
                            .foregroundStyle(Color.main50)
                            .frame(width: 62, height: 32)
                            .background(Color.main700)
                            .cornerRadius(16)
                    }
                    .font(.custom("Pretendard-Medium", size: 16))
                }
                Spacer().frame(height: 8)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 391, height: 0.5)
                    .background(Color.gray200)
                Spacer().frame(height: 28)
            }
            .padding(.leading, 35)
        ArrowView()
    }
}

#Preview {
    HomeView()
}
