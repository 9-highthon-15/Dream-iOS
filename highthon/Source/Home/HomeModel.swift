//
//  HomeModel.swift
//  highthon
//
//  Created by 최시훈 on 2/18/24.
//

import Foundation

struct HomeModel: Hashable, Decodable {
    var result: Bool
    var posts: [PostDetails]
}

struct PostDetails: Identifiable, Hashable, Decodable {
   var id: Int
   var author: String
   var authorImage: String
   var title: String
   var tags: [String]
   var give: Int
   var created_at: String
}
