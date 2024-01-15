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
//          ProfileView(user: <#User#>)
//            .tabItem {
//              Image(systemName: "person")
//            }
        }
        
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading: logoutButton)
        .tint(.black)
      }
    }
  var logoutButton: some View {
    Button {
      AuthViewModel.shared.signout()
    } label: {
      Text("Logout")
        .foregroundColor(.black)
    }

  }
}

#Preview {
    MainTabView()
}
