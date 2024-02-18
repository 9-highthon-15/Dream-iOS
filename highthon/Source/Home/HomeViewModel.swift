//
//  HomeViewModel.swift
//  highthon
//
//  Created by 최시훈 on 2/17/24.
//

import SwiftUI
import Alamofire

class HomeViewModel: ObservableObject {
    @Published var posts: [PostDetails] = []
    @Published var isShowingActionSheet: Bool = false
    @Published var selectedButton: Int?
    func homeList() {
        AF.request("\(api)/post/read", method: .get)
            .validate()
            .responseDecodable(of: HomeModel.self) { response in
                switch response.result {
                case .success(let newHomeModel):
                    self.posts = newHomeModel.posts
                case .failure(let error):
                    print("homeList Error: \(error.localizedDescription)")
                }
            }
    }
}
