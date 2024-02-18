////
////  SignUpTextField.swift
////  Instagram CloneFile
////
////  Created by 서지완 on 2/17/24.
////
//
//import SwiftUI
//
//struct SignUpTextField: View {
//    @StateObject private var state = SignUpViewModel()
//    var textFields: [(String, Binding<String>)] {
//        [
//            ("닉네임 입력", $state.name),
//            ("전화번호 입력", $state.number),
//            ("아이디 입력", $state.id),
//            ("비밀번호 입력", $state.password),
//            ("비밀번호 입력", $state.passwordCheck)
//        ]
//    }
//    var body: some View {
//        VStack(alignment: .leading,spacing: 0) {
//            ForEach(0...4, id: \.self) { num in
//                Text(state.fieldName[num])
//                    .font(.system(size: 16))
//                    .padding(.bottom,8)
//                    .padding(.top,32)
//                HStack(spacing: 0){
//                    
//                    TextField(state.fieldText[num], text: $state.userInformation[num])
//                        .font(.system(size: 14))
//                        .padding(.leading, 16)
//                }
//                .frame(width: 342,height:48)
//                .background(Color.gray)
//                .cornerRadius(8)
//            }
//            
//            Button{
//                state.signupButton()
//            }label: {
//                Text("회원가입")
//            }
//        }
//    }
//}
//
//#Preview {
//    SignUpTextField()
//}
