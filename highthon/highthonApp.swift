//
//  highthonApp.swift
//  highthon
//
//  Created by 노가현 on 2/17/24.
//

import SwiftUI
import SwiftData

@main
struct highthonApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            MainTab()
        }
    }
}
