//
//  MainTab.swift
//  highthon
//
//  Created by 최시훈 on 2/17/24.
//

import SwiftUI

struct MainTab: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Home")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Search")
                }
            PostView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Post")
                }
            NotificationView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Notification")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Profile")
                }
        }
    }
}
