//
//  ProfileActionButtonView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct ProfileActionButtonView: View {
  var isCurrentUser = false
  var isFollowed = false
    var body: some View {
      if isCurrentUser {
        //eidt profile button
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
          Text("Edit Profile")
            .font(.system(size: 14, weight: .semibold))
            .frame(width: 360,height: 32)
            .foregroundColor(.black)
            .overlay(
             RoundedRectangle(cornerRadius: 3)
              .stroke(Color.gray, lineWidth: 1)
            )
        })
      } else {
        HStack {
          Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text(isFollowed ? "Following" : "Follow")
              .font(.system(size: 14, weight: .semibold))
              .frame(width: 172,height: 32)
              .foregroundColor(isFollowed ? .black : .white)
              .background(isFollowed ? Color.white : .blue)
              .overlay(
               RoundedRectangle(cornerRadius: 3)
                .stroke(Color.gray, lineWidth:isFollowed ? 1 : 0)
              )
          }).cornerRadius(3)
          Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("Message")
              .font(.system(size: 14, weight: .semibold))
              .frame(width: 172,height: 32)
              .foregroundColor(.black)
              .overlay(
               RoundedRectangle(cornerRadius: 3)
                .stroke(Color.gray, lineWidth: 1)
              )
          })
        }
      }
    }
}

#Preview {
    ProfileActionButtonView()
}
