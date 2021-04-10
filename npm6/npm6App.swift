//
//  npm6App.swift
//  npm6
//
//  Created by Morris Albers on 4/8/21.
//

import SwiftUI
import Firebase

@main
struct npm6App: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
