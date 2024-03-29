import SwiftUI

struct SearchView: View {
    @State var first = ["개발", "요리", "운동", "음악"]
    @State var second = ["디자인","미용","게임","악기"]
    @StateObject private var state = SearchViewModel()
    @State var isShowing = true
    var body: some View {
        VStack(spacing: 0) {
            ZStack{
                HStack(spacing: 0) {
                    TextField("검색", text: $state.search)
                        .font(.system(size: 14))
                        .padding(.leading, 16)
                    Button{
                        state.search = ""
                        isShowing = false
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .padding(.trailing,16)
                    }
                }
                .frame(width: 342,height:48)
                .background(Color.gray50)
                .cornerRadius(8)
                .padding(.top,8)
            }
            
            if isShowing {
                Group {
                    Text("추천 검색 태그")
                        .foregroundStyle(Color.gray800)
                        .font(.custom("Pretendard-SemiBold", size: 16))
                        .padding(.top, 52)
                        .padding(.bottom, 12)
                    HStack {
                        ForEach(first, id: \.self) { title in
                            Button {
                                state.search = title
                            } label: {
                                Text(title)
                                    .foregroundStyle(Color.gray900)
                                    .font(.custom("Pretendard-Medium", size: 16))
                                    .padding(.vertical, 4)
                                    .padding(.horizontal, 12)
                                    .background(Color.main50)
                                    .cornerRadius(16)
                            }
                        }
                    }
                    .padding(.bottom, 12)
                    HStack {
                        ForEach(second, id: \.self) { title in
                            Button {
                                state.search = title
                            } label: {
                                Text(title)
                                    .foregroundStyle(Color.gray900)
                                    .font(.custom("Pretendard-Medium", size: 16))
                                    .padding(.vertical, 4)
                                    .padding(.horizontal, 12)
                                    .background(Color.main50)
                                    .cornerRadius(16)
                            }
                        }
                    }
                    .padding(.bottom,12)
                }
            } else {
                SearchListView()
            }
            Spacer()
            
        }
        .padding(.top, 10)
        .onAppear {
            state.searchSetup()
        }
    }
}

#Preview {
    SearchView()
}
