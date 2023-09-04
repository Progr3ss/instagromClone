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
            UserStatView()
            UserStatView()
            UserStatView()
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
          Spacer()
        }
        .padding(.top)
      }
    }
}

struct UserStatView: View {
  var body: some View {
    VStack {
      Text("2")
        .font(.system(size: 15, weight: .semibold))
      Text("Followers")
        .font(.system(size: 15))
      
    }.frame(width: 80, alignment: .center)
  }
}
#Preview {
    ProfileHeaderView()
}
