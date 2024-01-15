//
//  UserListView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct UserListView: View {
  @ObservedObject var viewModel: SearchViewModel
  @Binding var searchText: String
  var users: [User] {
    return searchText.isEmpty ? viewModel.users : viewModel.filteredUsers(searchText)
  }
    var body: some View {
      ScrollView {
        LazyVStack() {
          ForEach(users) { user in
            NavigationLink(destination: ProfileView(user: user)) {
              UserCell(user: user)
                .padding(.leading)
            }
          }
        }
      }
    }
}

