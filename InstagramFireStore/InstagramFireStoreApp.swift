//
//  InstagramFireStoreApp.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/2/23.
//

import SwiftUI
import FirebaseCore

@main
struct InstagramFireStoreApp: App {
  init() {
    FirebaseApp.configure()
  }
    var body: some Scene {
        WindowGroup {
          ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
