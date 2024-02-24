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
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            UploadEndView()
                .tabItem {
                    Image(systemName: "plus.app")
                }
            NotificationView()
                .tabItem {
                    Image(systemName: "bell")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.main400)
    }
}

#Preview {
    MainTab()
}
