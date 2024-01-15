//
//  ProfileView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/2/23.
//

import SwiftUI

struct ProfileView: View {
  let user: User
  
    var body: some View {
      VStack(spacing: 32) {
        ProfileHeaderView()
        PostGridView()
      }.padding(.top)
    }
}

