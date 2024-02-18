//
//  UploadSecondView.swift
//  highthon
//
//  Created by 노가현 on 2/18/24.
//

import SwiftUI

struct UploadSecondView: View {
    @State var title: String = ""
    
    @State var receiveButton = false
    @State var giveButton = false
    
    @State var receive = false
    @State var give = false
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {

                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 342, height: 16)
                            .background(Color(red: 0.96, green: 0.96, blue: 0.97))
                        
                            .cornerRadius(20)
                        
                        Text("0/2")
                        
                        Spacer().frame(height: 24)
                    }
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
            Text("구분")
                .font(.custom("Pretendard-Medium", size: 16))
                .foregroundStyle(Color.gray900)
            Spacer().frame(height: 4)
            
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
            }
            
            Spacer().frame(height: 32)
                }
                
    }
}

#Preview {
    UploadSecondView()
}
