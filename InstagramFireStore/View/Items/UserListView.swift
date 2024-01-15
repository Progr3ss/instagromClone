//
//  UserListView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct UserListView: View {
  @ObservedObject var viewModel: SearchViewModel
  
    var body: some View {
      ScrollView {
        LazyVStack() {
          
          ForEach(viewModel.users) { user in
            NavigationLink(destination: ProfileView()) {
              UserCell(user: user)
                .padding(.leading)
            }
          }
        }
      }
    }
}

