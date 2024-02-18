import SwiftUI

struct ArrowView: View {
    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                ZStack(alignment: .bottomTrailing) {
                    ScrollView {
                        VStack {
                            ForEach(1..<50) { i in
                                Text("Line \(i)")
                                    .id(i)
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    .padding(.bottom, 0)
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
}

#Preview {
    ArrowView()
}
