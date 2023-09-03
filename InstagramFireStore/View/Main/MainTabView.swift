//
//  MainTabView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/2/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
      NavigationView {
        TabView {
          FeedView()
            .tabItem {
              Image(systemName: "house")
            }
          SearchView()
            .tabItem {
              Image(systemName: "magnifyingglass")
            }
          UploadPostView()
            .tabItem {
              Image(systemName: "plus.square")
            }
          NotificationView()
            .tabItem {
              Image(systemName: "heart")
            }
          ProfileView()
            .tabItem {
              Image(systemName: "person")
            }
        }
        
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .tint(.black)
      }
    }
}

#Preview {
    MainTabView()
}
