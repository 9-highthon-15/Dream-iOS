//
//  HomeView.swift
//  highthon
//
//  Created by 최시훈 on 2/17/24.
//


import SwiftUI
import UIKit

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    @State var location: String = "서울"
    var body: some View {
        VStack(alignment: .leading) {
            Menu("\(location)") {
                Button("서울") { location = "서울" }
                Button("경기") { location = "경기" }
                Button("부산") { location = "부산" }
                Button("인천") { location = "인천" }
                Button("광주") { location = "광주" }
                Button("대전") { location = "대전" }
                Button("울산") { location = "울산" }
                Button("강원") { location = "강원" }
                Button("충청북도") { location = "충청북도" }
                Button("충청남도") { location = "충청남도" }
                Button("울산") { location = "울산" }
                Button("강원") { location = "강원" }
                Button("충청") { location = "충청" }
                Button("전라북도") { location = "전라북도" }
                Button("전라남도") { location = "전라남도" }
                Button("경상북도") { location = "경상북도" }
                Button("경상남도") { location = "경상남도" }
                Button("제주") { location = "제주" }
            }
            .font(.system(size: 30, weight: .semibold))
            .foregroundColor(.black)
            .padding(.leading, 10)
            .frame(alignment: .center)
            
            Spacer().frame(height: 21)
            
            HStack {
                Button {
                    viewModel.selectedButton = nil
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
                    viewModel.selectedButton = 1
                } label: {
                    Text("드려요")
                        .foregroundStyle(Color.main50)
                        .frame(width: 62, height: 32)
                        .background(Color.main300)
                        .cornerRadius(16)
                }
                Button {
                    viewModel.selectedButton = 0
                } label: {
                    Text("받아요")
                        .foregroundStyle(Color.main50)
                        .frame(width: 62, height: 32)
                        .background(Color.main700)
                        .cornerRadius(16)
                }
                .font(.custom("Pretendard-Medium", size: 16))
            }
            Spacer()
                .frame(height: 8)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 391, height: 0.5)
                .background(Color.gray200)
            Spacer().frame(height: 28)
            HomeListView()
                .environmentObject(viewModel)
        }
        .padding(.leading, 35)
    }
}


#Preview {
    HomeView()
}
