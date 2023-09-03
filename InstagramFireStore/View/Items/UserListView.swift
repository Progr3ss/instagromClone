//
//  UserListView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
      ScrollView {
        LazyVStack() {
          ForEach(0..<20) {_ in
            UserCell()
              .padding(.leading)
          }
        }
      }
    }
}

#Preview {
    UserListView()
}
