//
//  HomeListView.swift
//  highthon
//
//  Created by 최시훈 on 2/17/24.
//

import SwiftUI

struct HomeListView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    var body: some View {
        
        ScrollViewReader { proxy in
            
            ZStack(alignment: .bottomTrailing) {
//                CustomActionSheet(isPresented: $viewModel.isShowingActionSheet)
                List(viewModel.posts, id: \.self) { post in
                    if [post.give, nil].contains(viewModel.selectedButton) {
                        VStack {
                            HStack {
                                Text(post.title)
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
                                ForEach(post.tags, id: \.self) { tag in
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
                                AsyncImage(url: URL(string: post.authorImage)) { image in
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
                                Text(post.author)
                                    .font(.custom("Pretendard-Regular", size:14))
                                    .foregroundColor(Color.gray700)
                                Spacer()
                                Text("\(post.created_at) 작성")
                                    .font(.custom("Pretendard-Regular", size:14))
                                    .foregroundColor(Color.gray700)
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 0)
                .padding(.vertical, 0)
                .listStyle(.plain)
                .onAppear {
                    viewModel.homeList()
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
                .frame(width: 50, height: 50, alignment: .bottomTrailing)
                .background(Color.main300)
                .cornerRadius(50)
                .padding(50)
                .padding(.trailing, -50)
            }
            
        }
    }
}


#Preview {
    HomeListView()
}
