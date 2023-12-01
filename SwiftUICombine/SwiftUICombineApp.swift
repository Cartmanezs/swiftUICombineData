//
//  SwiftUICombineApp.swift
//  SwiftUICombine
//
//  Created by Igor Palyvoda on 28.11.2023.
//

import SwiftUI
import Firebase

@main
struct SwiftUICombineApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
