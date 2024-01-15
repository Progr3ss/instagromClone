//
//  ProfileHeaderView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct ProfileHeaderView: View {
  let user: User
    var body: some View {
      VStack(alignment: .leading) {
        HStack {
          AsyncImage(url: URL(string: user.profileImageUrl)) { phase in
              switch phase {
              case .empty:
                  ProgressView()
              case .success(let image):
                  image
                      .resizable()
                      .scaledToFill()
                      .frame(width: 80, height: 80)
                      .clipShape(Circle())
                      .padding(.leading)
              case .failure:
                  Image(systemName: "exclamationmark.triangle")
                      .frame(width: 48, height: 48)
                      .foregroundColor(.red) // Adjust color as needed
              @unknown default:
                  EmptyView()
              }
          }
          Spacer()
          HStack(alignment: .center, spacing:  16) {
            UserStatView(value: 1, title: "Post")
            UserStatView(value: 2, title: "Followers")
            UserStatView(value: 3, title: "Following")
          }.padding(.trailing,32)
        }
      Text(user.fullName)
          .font(.system(size: 15, weight: .semibold))
          .padding([.leading, .top])
        Text("Gotham's Dark Knight | Bililionaire")
          .font(.system(size: 15))
          .padding([.leading])
          .padding(.top,1)
        
        HStack {
          Spacer()
          ProfileActionButtonView(isCurrentUser: user.isCurrentUser)
          Spacer()
        }
        .padding(.top)
      }
    }
}
//#Preview {
//    ProfileHeaderView()
//}
