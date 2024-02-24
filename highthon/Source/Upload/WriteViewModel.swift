//
//  WriteViewModel.swift
//  highthon
//
//  Created by 최시훈 on 2/18/24.
//

import SwiftUI
import Alamofire
class WriteViewModel: ObservableObject {
    @Published var tag: String = ""
    @Published var title: String = ""
    @Published var content: String = ""
    @Published var tags: [String] = [""]
    @Published var give: Bool = true
       
    var parameters: [String: Any] {
        return [
            "title": "경로당에 출석체크 앱 만들어 주실 천사~😇",
            "content": "경로당에 출석체크 앱 만들어주세요",
            "tags": ["경로당", "개발", "천사"],
            "give": true
        ]
    }
    func doneButton() {
        print(parameters)
        AF.request("\(api)/post/write",
                   method: .post,
                   parameters: parameters,
                   encoding: JSONEncoding.default,
                   headers: ["Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiYjQxNDU3MzItMmZiZi00ZTA5LTkxMzEtNjNjZjliYjk3Y2ZhIn0.gZDZ6PReUKLEruhk-q-asw0gDifFWfBxgHoSXypoRSM"]
        )
        .validate()
        .response() { response in
            switch response.result {
            case .success:
                print("성공이다 임마")
            case .failure(let error):
                print("\(error.localizedDescription) \(error)")
            }
        }
    }
}

