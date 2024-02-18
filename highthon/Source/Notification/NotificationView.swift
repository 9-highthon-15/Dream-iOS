//
//  NotificationView.swift
//  highthon
//
//  Created by 최시훈 on 2/17/24.
//

import SwiftUI

struct NotificationView: View {
    @State var arr = ["1시간 전","1시간 전","2시간 전","3시간 전","3시간 전","4시간 전","4시간 전","5시간 전","5시간 전","7시간 전"]
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading,spacing: 0) {
                List(0..<10) { index in
                    var idx = arr[index]
                    HStack {
                        Image("MessageLogo")
                            .padding(.trailing,16)
                        VStack(alignment: .leading, spacing: 0) {
                            HStack(spacing: 0) {
                                Text("상대방이 약속을 잡았어요")
                                    .font(.custom("Pretendard-Medium", size: 16))
                                    
                                Image("nimg")
                                    .padding(.leading, 4)
                            }
                            .padding(.bottom, 4)
                            Text(idx)
                                .font(.custom("Pretendard-Medium", size: 14))
                                .foregroundStyle(Color.gray600)
                                
                        }
                    }
                    .listRowSeparator(.hidden)
                    .padding(.bottom, 14)
                    
                }
                .listStyle(PlainListStyle())
                Spacer()
            }
            .navigationTitle("알람")
        }
    }
}

#Preview {
    NotificationView()
}
