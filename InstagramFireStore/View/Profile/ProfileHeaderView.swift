//
//  ProfileHeaderView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
      VStack(alignment: .leading) {
        HStack {
          Image("image4")
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .padding(.leading)
          Spacer()
          HStack(alignment: .center, spacing:  16) {
            UserStatView(value: 1, title: "Post")
            UserStatView(value: 2, title: "Followers")
            UserStatView(value: 3, title: "Following")
          }.padding(.trailing,32)
        }
        Text("Princianaa Dur")
          .font(.system(size: 15, weight: .semibold))
          .padding([.leading, .top])
        Text("Gotham's Dark Knight | Bililionaire")
          .font(.system(size: 15))
          .padding([.leading])
          .padding(.top,1)
        
        HStack {
          Spacer()
          ProfileActionButtonView()
          Spacer()
        }
        .padding(.top)
      }
    }
}
#Preview {
    ProfileHeaderView()
}
