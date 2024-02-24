import SwiftUI

struct WriteView: View {
    @State private var nextButton = false
    @State private var count: Int = 1
    @StateObject private var viewModel = WriteViewModel()
    @Environment(\.dismiss) var dismissAction

    var body: some View {
        VStack {
            HStack {
                Text("새로운 게시물")
                    .foregroundColor(Color.gray900)
                    .font(.custom("Pretendard-Medium", size: 16))
                Spacer()
                Button(action: {
                    nextButton.toggle()
                    viewModel.doneButton()
                    dismissAction()
                }) {
                    Text("완료")
                        .foregroundColor(viewModel.content.isEmpty ? .gray : .blue)
                        .font(.custom("Pretendard-Medium", size: 20))
                        .cornerRadius(8)
                }
            }
            .padding(.top, 20)
            .padding(.horizontal, 35)
            
            Spacer().frame(height: 37.5)
            
            HStack(spacing:0){
                Rectangle()
                    .frame(width: 163,height: 16)
                    .foregroundColor(.blue)
                    .padding(.leading,42)
                    .background(
                        HStack{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 16,height: 16)
                                .padding(.leading,35)
                                .foregroundColor(.blue)
                            
                            Spacer()
                        }
                    )
                
                Rectangle()
                    .frame(width: 163,height: 16)
                    .padding(.trailing,43)
                    .foregroundColor(viewModel.content.isEmpty ? .gray : .blue)
                    .background(
                        HStack{
                            Spacer()
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 16,height: 16)
                                .padding(.trailing,35)
                                .foregroundColor(viewModel.content.isEmpty ? .gray : .blue)
                        }
                    )
                
                Spacer()
            }
            
            Text("\(count)/2")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 35)
//                .onAppear {
//                    if !content.isEmpty {
//                        count = 2
//                    }
//                }
            Spacer().frame(height: 24)
            
            Text("내용")
                .font(.custom("Pretendard-Medium", size: 16))
                .foregroundColor(Color.gray900)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 35)
            Spacer().frame(height: 10)
            ZStack {
                TextField("내용 입력", text: $viewModel.content)
                    .font(.custom("Pretendard-Regular", size: 14))
                    .foregroundColor(Color.gray900)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .frame(width: 342, height: 192, alignment: .topLeading)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.97))
                    .cornerRadius(8)
            }
            .onChange(of: viewModel.content) { newValue in
                count = newValue.isEmpty ? 1 : 2
            }
        Spacer()
        }
    }
}

#if DEBUG
struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
#endif
