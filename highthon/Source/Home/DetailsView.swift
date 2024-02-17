//
//  DetailsView.swift
//  highthon
//
//  Created by 서지완 on 2/18/24.
//

import SwiftUI

struct DetailsView: View {
    @State var detailsDescription: String = "Lorem ipsum dolor sit amet consectetur. Feugiat quis elit a ultrices eget id arcu volutpat. Nisl adipiscing at quis aliquet tempor non egestas pellentesque massa. Sed etiam amet turpis proin odio in. Tristique non ut urna orci in eget ut amet amet. Urna nascetur sollicitudin tellus tellus lacus neque laoreet scelerisque euismod. Neque mus fermentum convallis magna quam vel sem. Tempus sed maecenas nunc pulvinar odio ornare id. Faucibus molestie tincidunt malesuada id fermentum. Malesuada proin consequat posuere et faucibus turpis sapien vestibulum semper. Quam faucibus lorem mattis a. Adipiscing eget scelerisque elementum in interdum nam. Sodales hendrerit massa odio adipiscing accumsan integer sit nullam tortor. Diam in sit volutpat vitae sit ac aliquam faucibus in. Convallis in etiam mauris nibh. Euismod facilisis risus nec auctor. Dignissim habitant fermentum ultrices quis a dolor bibendum aenean amet. Egestas nec sollicitudinㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ"
    @Environment(\.dismiss) var dismiss
    @State var first = ["개발", "요리", "운동", "음악"]
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 0){
                        Circle()
                            .frame(width: 24,height: 24)
                            .padding(.leading,35)
                            .padding(.trailing,8)
                        
                        Text("닉네임")
                        Spacer()
                        Text("드려요")
                            .foregroundStyle(Color.main50)
                            .font(.custom("Pretendard-Medium", size: 16))
                            .padding(.vertical, 4)
                            .padding(.horizontal, 12)
                            .background(Color.main300)
                            .cornerRadius(16)
                            .padding(.trailing,24)
                        
                        
                    }.padding(.top,12)
                    Divider()
                        .padding(.top,8)
                    HStack(spacing:0){
                        Text("저의 재능을 기부합니다~!")
                            .padding(.leading,35)
                            .font(.custom("Pretendard-Medium", size: 24))
                            .foregroundStyle(Color.gray900)
                        
                        Spacer()
                        Button{
                            
                        }label: {
                            Image("point")
                                .padding(.trailing,24)
                        }
                    }.padding(.top,24)
                    
                    Text(detailsDescription)
                        .padding(.horizontal,35)
                        .padding(.top,46)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Pretendard", size: 16))
                        .foregroundStyle(Color.gray800)
                    
                    HStack{
                        ForEach(first, id: \.self) { title in
                            Text(title)
                                .foregroundStyle(Color.gray900)
                                .font(.custom("Pretendard-Medium", size: 16))
                                .padding(.vertical, 4)
                                .padding(.horizontal, 12)
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color.main300, lineWidth: 1)
                                )
                                
                        }
                    }.padding(.leading,35)
                        .padding(.top,38)
                    
                    HStack{
                        Text("1일전")
                            .padding(.leading,35)
                        Spacer()
                        Button{
                            
                        }label: {
                            Image("point")
                                .padding(.trailing,24)
                        }
                        
                    }.padding(.top,35)
                    Spacer()
                }
                .navigationBarTitle("저의 재능을...", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Image("left")
                                .padding(.leading,12)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    DetailsView()
}
