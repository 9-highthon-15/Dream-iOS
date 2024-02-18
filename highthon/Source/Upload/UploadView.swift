//
//  UploadView.swift
//  highthon
//
//  Created by 노가현 on 2/18/24.
//

import SwiftUI

struct UploadView: View {
    @State var tags: [String] = []
    var body: some View {
        ScrollView {
            NavigationView {
                VStack(alignment: .leading) {
                    VStack {
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
                                    GaugeBarView()
                                    TitleView()
                                    DivisionView()
                                    TagView(tags: $tags)
                                    CategoriView(tags: $tags)
                                }
                        }
                            .padding(.horizontal, 35)
                    }
                }
            }
        }
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
            VStack(alignment: .leading) {
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
        @State var receiveButton = false
        @State var giveButton = false
        
        var body: some View {
            @State var receive = false
            @State var give = false
            
            VStack(alignment: .leading) {
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
            }
            
            Spacer().frame(height: 32)
        }
}
    
struct TagView: View {
    @State var tag: String = ""
    @Binding var tags: [String]
    
    var body: some View {
        VStack(alignment: .leading) {
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
                HStack {
                    Spacer()
                    
                    Button {
                        tags.append(tag)
                        tag = ""
                    } label: {
                        Text("추가")
                            .foregroundStyle(Color.main400)
                            .font(.custom("Pretendard-Medium", size: 16))
                    }
                    .padding(.trailing, 20)
                }
            }
            Spacer().frame(height: 12)
        }
    }
}
    
struct CategoriView: View {
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
    
#Preview {
    UploadView()
}
