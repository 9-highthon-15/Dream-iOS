import SwiftUI

struct SearchView: View {
    @State var first = ["개발", "요리", "운동", "음악"]
    @State var second = ["디자인","미용","게임","악기","어디가셨"]
    @StateObject private var state = SearchViewModel()
    var body: some View {
        VStack(alignment: .leading,spacing: 0){
            ZStack{
                HStack(spacing: 0){
                    TextField("검색", text: $state.search)
                        .font(.system(size: 14))
                        .padding(.leading, 16)
                    Button{
                        state.search = ""
                    } label: {
                        Image("plusButton")
                            .padding(.trailing,16)
                    }
                }
                .frame(width: 342,height:48)
                .background(Color.gray50)
                .cornerRadius(8)
                .padding(.top,8)
                
            }
            Text("추천 검색 태그")
                .foregroundStyle(Color.gray800)
                .font(.custom("Pretendard-SemiBold", size: 16))
                .padding(.top,52)
                .padding(.bottom,12)
            
            HStack{
                ForEach(first, id: \.self) { title in
                    Text(title)
                        .foregroundStyle(Color.gray900)
                        .font(.custom("Pretendard-Medium", size: 16))
                        .padding(.vertical, 4)
                        .padding(.horizontal, 12)
                        .background(Color.main50)
                        .cornerRadius(16)
                }
            }.padding(.bottom,12)
            HStack{
                ForEach(second, id: \.self) { title in
                    Text(title)
                        .foregroundStyle(Color.gray900)
                        .font(.custom("Pretendard-Medium", size: 16))
                        .padding(.vertical, 4)
                        .padding(.horizontal, 12)
                        .background(Color.main50)
                        .cornerRadius(16)
                }
            }.padding(.bottom,12)
        }
        Spacer()
    }
}

#Preview {
    SearchView()
}
