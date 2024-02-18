//
//  SearchListView.swift
//  highthon
//
//  Created by 최시훈 on 2/18/24.
//

import SwiftUI

struct SearchListView: View {
    @StateObject var viewModel = SearchViewModel()
    var body: some View {
        
        ScrollViewReader { proxy in
            
            ZStack(alignment: .bottomTrailing) {
                List(0..<1, id: \.self) { post in
                        VStack {
                            HStack {
                                Text("새로운 아시아 요리 레시피 공유합니다")
                                    .font(.custom("Pretendard-SemiBold", size:20))
                                    .foregroundColor(Color.gray900)
                                Spacer()
                                Button(action: {
                                    viewModel.isShowingActionSheet = true
                                }) {
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(Color.gray800)
                                }
                            }
                            
                            HStack {
                                ForEach(["아시아요리", "레시피공유", "요리맛집"], id: \.self) { tag in
                                    Button(action: { }) {
                                        Text(tag)
                                    }
                                    .buttonStyle(CustomTextStyle())
                                }
                                Spacer()
                            }
                            Divider()
                                .frame(width: 342, height: 0.01)
                            
                            HStack {
                                AsyncImage(url: URL(string: "https://r2.suk.kr/2468c40e-7663-4f7c-a33b-67438e901cee.png")) { image in
                                    image.resizable()
                                        .foregroundColor(Color.gray)
                                        .background(Color.gray)
                                        .frame(width: 21, height: 21)
                                        .cornerRadius(10.5)
                                        .font(.headline)
                                } placeholder: {
                                    Image(systemName: "person.fill")
                                        .foregroundColor(Color.gray)
                                        .background(Color.gray)
                                        .frame(width: 21, height: 21)
                                        .cornerRadius(10.5)
                                        .font(.headline)
                                }
                                Text("요리연구가")
                                    .font(.custom("Pretendard-Regular", size:14))
                                    .foregroundColor(Color.gray700)
                                Spacer()
                                Text("7시간 전 작성")
                                    .font(.custom("Pretendard-Regular", size:14))
                                    .foregroundColor(Color.gray700)
                            }
                        }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 0)
                .padding(.vertical, 0)
                .listStyle(.plain)
                .onAppear {
//                    viewModel.searchSetup()
                    print("state.posts")
                }
                
                
                
                Button(action: {
                    withAnimation {
                        proxy.scrollTo(1, anchor: .top)
                    }
                }) {
                    Image(systemName: "chevron.up")
                        .resizable()
                        .frame(width: 20, height: 12)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.main300)
                        .cornerRadius(50)
                }
                .frame(width: 50, height: 50, alignment: .trailing)
                .background(Color.main300)
                .cornerRadius(50)
                .padding(50)
                .padding(.trailing, -20)
            }
            
        }
    }
}
