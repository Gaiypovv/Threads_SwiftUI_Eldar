//
//  Threads_SwiftUI_EldarApp.swift
//  Threads_SwiftUI_Eldar
//
//  Created by Eldar Gaiypov on 23/11/23.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct Threads_SwiftUI_EldarApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
