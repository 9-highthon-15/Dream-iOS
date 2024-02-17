//
//  UploadView.swift
//  highthon
//
//  Created by 노가현 on 2/18/24.
//

import SwiftUI

struct UploadView: View {
    var body: some View {
        ScrollView {
            VStack {
                NewPostView()
                GaugeBarView()
                TitleView()
                DivisionView()
                TagView()
            }
        }
    }
}

struct NewPostView: View {
    var body: some View {
        HStack {
            Text("새로운 게시물")
                .foregroundColor(Color.gray900)
                .font(.custom("Pretendard-Medium", size: 16))
            Spacer()
            Text("다음")
                .foregroundStyle(Color.gray500)
                .font(.custom("Pretendard-Medium", size: 20))
        }
        .padding(.horizontal, 35)
        
        Spacer().frame(height: 37.5)
    }
}

struct GaugeBarView: View {
    var body: some View {
        VStack(alignment: .trailing) {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 342, height: 16)
                .background(Color(red: 0.96, green: 0.96, blue: 0.97))
            
                .cornerRadius(20)
            
            Text("0/2")
            
            Spacer().frame(height: 24)
        }
    }
}

struct TitleView: View {
    
    @State var title: String = ""
    
    var body: some View {
        VStack {
            Text("제목")
                .foregroundStyle(Color.gray900)
                .font(.custom("Pretendard-Medium", size: 16))
            Spacer().frame(height: 8)
            
            ZStack {
                TextField("제목 입력", text: $title)
                    .foregroundStyle(Color.gray500)
                    .font(.custom("Pretendard-Regular", size: 14))
            }
            .padding(.horizontal, 16)
            .frame(width: 342, height: 48, alignment: .leading)
            .background(Color.gray50)
            .cornerRadius(8)
        }
        
        Spacer().frame(height: 32)
    }
}

struct DivisionView: View {
    @State var selectButton = false
    var body: some View {
        @State var receive = false
        @State var give = false
        
        VStack {
            Text("구분")
                .font(.custom("Pretendard-Medium", size: 16))
                .foregroundStyle(Color.gray900)
            Spacer().frame(height: 4)
            
            HStack {
                Button {
                    selectButton.toggle()
                } label: {
                    Text("받아요")
                        .foregroundStyle(Color.gray900)
                        .font(.custom("Pretendard-SemiBold", size: 14))
                        .padding(.horizontal, 16)
                        .frame(width: 160, height: 48, alignment: .center)
                        .background(Color.gray50)
                    
                        .cornerRadius(8)
                }
                Button {
                    selectButton.toggle()
                } label: {
                    Text("드려요")
                        .foregroundStyle(Color.gray900)
                        .font(.custom("Pretendard-SemiBold", size: 14))
                        .padding(.horizontal, 16)
                        .frame(width: 160, height: 48, alignment: .center)
                        .background(Color.gray50)
                    
                        .cornerRadius(8)
                }
                .font(.custom("Pretendard-Medium", size: 16))
            }
        }
        
        Spacer().frame(height: 32)
    }
}

struct TagView: View {
    @State var tag: String = ""
    
    var body: some View {
        VStack {
            Text("태그")
            Spacer().frame(height: 8)
            ZStack {
                TextField("태그 입력", text: $tag)
                    .foregroundStyle(Color.gray500)
                    .font(.custom("Pretendard-Regular", size: 14))
                    .padding(.horizontal, 16)
                    .frame(width: 342, height: 48)
                    .background(Color.gray50)
                    .cornerRadius(8)
                Spacer()
                Text("추가")
                    .foregroundStyle(Color.main400)
                    .font(.custom("Pretendard-Medium", size: 16))
            }
        }
    }
}

#Preview {
    UploadView()
}
