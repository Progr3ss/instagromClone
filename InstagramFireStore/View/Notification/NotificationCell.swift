//
//  NotificationCell.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct NotificationCell: View {
  @State private var showPostImage = false
    var body: some View {
      HStack {
        Image("image3")
          .resizable()
          .scaledToFill()
          .frame(width: 40,height: 40)
          .clipShape(Circle())
        
        Text("Batman")
          .font(.system(size: 14, weight: .semibold)) +
          Text("Liked one of your posts.")
          .font(.system(size: 15))
        Spacer()
        
        if showPostImage {
          Image("image3")
            .resizable()
            .scaledToFill()
            .frame(width: 40,height: 40)
        }else {
          Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Text("Follow")
              .padding(.horizontal,20)
              .padding(.vertical,8)
              .background(Color(.systemBlue))
              .foregroundColor(.white)
              .clipShape(Capsule())
              .font(.system(size: 14, weight: .semibold))
          })
        }
        
      }.padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
