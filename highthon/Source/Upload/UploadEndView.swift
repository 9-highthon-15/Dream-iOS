//
//  UploadEndView.swift
//  highthon
//
//  Created by 노가현 on 2/18/24.
//

import SwiftUI

struct UploadEndView: View {
    @State var tag: String = ""
    @State var tags: [String] = []
    
    @State var titleInput: String = ""
    @State var tagInput: String = ""
    
    @State var receiveButton = false
    @State var giveButton = false
    
    let layout = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        
            NavigationView {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text("새로운 게시물")
                            .foregroundColor(Color.gray900)
                            .font(.custom("Pretendard-Medium", size: 16))
                            
                        Spacer()
                        NavigationLink(
                            destination: WriteView()){
                                Text("다음")
                                    .foregroundStyle(Color.main400)
                                    .font(.custom("Pretendard-Medium", size: 20))
                                    .cornerRadius(8)
                            }
                    }
                    .padding(.top, 20)
                    .padding(.horizontal, 35)
                    
                    Spacer().frame(height: 37.5)
                    ScrollView {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 342, height: 16)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.97))
                    
                        .cornerRadius(20)
                    
                    HStack {
                        Spacer()
                        Text("0/2")
                    }
                    .padding(.trailing, 35)
                    Spacer().frame(height:24)
                    
                    Text("제목")
                        .font(.custom("Pretendard-Medium", size: 16))
                        .foregroundStyle(Color.gray900)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,35)
                        
                    Spacer().frame(height:8)
                    
                    TextField("제목 입력", text: $titleInput)
                        .foregroundStyle(Color.gray500)
                        .font(.custom("Pretendard-Regular", size: 14))
                        .padding(.horizontal, 20)
                        .frame(width: 342, height: 48)
                        .background(Color.gray50)
                        .cornerRadius(8)
                    
                    Spacer().frame(height: 32)
                    
                    Text("구분")
                        .font(.custom("Pretendard-Medium", size: 16))
                        .foregroundStyle(Color.gray900)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,35)
                    Spacer().frame(height:8)
                    HStack {
                        Button {
                            receiveButton.toggle()
                            giveButton = false
                        } label: {
                            Text("받아요")
                                .foregroundStyle(Color.gray900)
                                .font(.custom("Pretendard-SemiBold", size: 14))
                                .padding(.horizontal, 16)
                                .frame(width: 160, height: 48, alignment: .center)
                                .background(receiveButton ? .white : .gray50)
                                .cornerRadius(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.5)
                                        .stroke(receiveButton ? .main400 : .gray50, lineWidth: 1)
                                )
                        }
                        
                        Button {
                            giveButton.toggle()
                            receiveButton = false
                        } label: {
                            Text("드려요")
                                .foregroundStyle(Color.gray900)
                                .font(.custom("Pretendard-SemiBold", size: 14))
                                .padding(.horizontal, 16)
                                .frame(width: 160, height: 48, alignment: .center)
                                .background(giveButton ? .white : .gray50)
                                .cornerRadius(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.5)
                                        .stroke(giveButton ? .main400 : .gray50, lineWidth: 1)
                                )
                        }
                        .font(.custom("Pretendard-Medium", size: 16))
                    }
                    Spacer().frame(height: 32)
                    
                    Text("태그")
                        .font(.custom("Pretendard-Medium", size: 16))
                        .foregroundStyle(Color.gray900)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,35)
                    
                    Spacer().frame(height:8)
                    
                    ZStack {
                        TextField("태그 입력", text: $tag)
                            .foregroundStyle(Color.gray500)
                            .font(.custom("Pretendard-Regular", size: 14))
                            .padding(.horizontal, 20)
                            .frame(width: 342, height: 48)
                            .background(Color.gray50)
                            .cornerRadius(8)
                        
                        HStack {
                            Spacer()
                            Button {
                                tags.append(tag)
                                tag = ""
                            } label: {
                                Text("추가")
                                    .foregroundStyle(Color.main400)
                                    .font(.custom("Pretendard-Medium", size: 16))
                                    .padding(.trailing, 45)
                            }
                        }
                    }
                    TagAddView(tags: $tags)
                }
            }
        }
    }
}

@ViewBuilder
func addView() -> some View {
}

#Preview {
    UploadEndView()
}
