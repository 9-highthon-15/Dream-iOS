//
//  SearchViewModel.swift
//  highthon
//
//  Created by 최시훈 on 2/17/24.
//

import SwiftUI
import Alamofire

class SearchViewModel: ObservableObject {
    @Published var search: String = ""
    @Published var posts: [PostDetails] = []
    @Published var isShowingActionSheet: Bool = false
    @Published var selectedButton: Int?
    func searchSetup() {
        AF.request("\(api)/search/", method: .get)
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
