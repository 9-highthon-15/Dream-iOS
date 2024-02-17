////
////  SelectInterestView.swift
////  highthon
////
////  Created by 서지완 on 2/17/24.
////
//
//import SwiftUI
//
//struct SelectInterestView: View {
//    
//    var first = ["축구", "컴퓨터 게임", "야구", "연애계"]
//    
//    var second = ["배드민턴", "친목", "모바일게임", "저매추"]
//
//    var third = ["서울", "경기", "부산", "대구"]
//    
//    @State private var firstSelections: Set<String> = []
//    @State private var secondSelections: Set<String> = []
//    @State private var thirdSelections: Set<String> = []
//
//    var body: some View {
//        ScrollView(.horizontal/*, showsIndicators: false*/) {
//            VStack {
//                HStack {
//                    ForEach(first, id: \.self) { title in
//                        Button {
//                            toggleSelection(for: title, in: 1)
//                        } label: {
//                            Text("\(title)")
//                                .padding(.vertical, 3)
//                                .padding(.horizontal, 10)
//                        }
//                        .frame(height: 30)
//                        .background(firstSelections.contains(title) ? Color(UIColor.systemGray3) : Color(UIColor.systemGray6))                        .foregroundColor(.gray)
//                        .cornerRadius(15)
//                    }
//                }
//                .padding(.leading, 10)
//                .frame(alignment: .leading)
//
//                HStack {
//                    ForEach(second, id: \.self) { title in
//                        Button {
//                            toggleSelection(for: title, in: 2)
//                        } label: {
//                            Text("\(title)")
//                                .padding(.vertical, 3)
//                                .padding(.horizontal, 10)
//                        }
//                        .frame(height: 30)
//                        .background(secondSelections.contains(title) ? Color(UIColor.systemGray3) : Color(UIColor.systemGray6))                        .foregroundColor(.gray)
//                        .cornerRadius(15)
//                    }
//                }
//                .padding(.leading, 50)
//                .frame(alignment: .leading)
//
//                HStack {
//                    ForEach(third, id: \.self) { title in
//                        Button {
//                            toggleSelection(for: title, in: 3)
//                        } label: {
//                            Text("\(title)")
//                                .padding(.vertical, 3)
//                                .padding(.horizontal, 10)
//                        }
//                        .frame(height: 30)
//                        .background(thirdSelections.contains(title) ? Color(UIColor.systemGray3) : Color(UIColor.systemGray6))
//                        .foregroundColor(.gray)
//                        .cornerRadius(15)
//                    }
//                }
//                .padding(.leading, 45)
//                .frame(alignment: .leading)
//            }
//            .padding(.trailing, 15)
//        }
//        .padding(.leading, -30)
//        .frame(height: 100)
//    }
//message.txt
//
//#Preview {
//    SelectInterestView()
//}
