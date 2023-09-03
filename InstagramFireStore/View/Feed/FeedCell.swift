//
//  FeedCell.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/2/23.
//

import SwiftUI

struct FeedCell: View {
  var body: some View {
    VStack(alignment:.leading) {
      //user info
      HStack{
        Image("image3")
          .resizable()
          .scaledToFill()
          .frame(width: 36, height: 36)
         
          .clipped()
          .cornerRadius(18)
        Text("Joker")
          .font(.system(size: 14, weight: .semibold))
      }
      Image("image4")
        .resizable()
        .scaledToFill()
        .frame(maxHeight: 440)
        .frame(maxWidth: 400)
      
//        .clipped()
      HStack(spacing: 8) {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
          Image(systemName: "heart")
            .resizable()
            .scaledToFill()
            .frame(width: 28, height: 28)
            .font(.system(size: 28))
        })
        Button(action: {}, label: {
          Image(systemName: "bubble.right")
            .resizable()
            .scaledToFill()
            .frame(width: 28, height: 28)
            .font(.system(size: 28))

            .padding(4)
        })
        Button(action: {}, label: {
          Image(systemName: "paperplane")
            .resizable()
            .scaledToFill()
            .frame(width: 28, height: 28)
            .font(.system(size: 28))
      
            .padding(4)
          
        })
      }
      .foregroundColor(.black)
      HStack {
        Text("Batman")
          .font(.system(size: 14, weight: .semibold)) + 
          Text("All men have limits. They akaskdfjask kasdjfka sjdfsadjkf lasdkasjdkf sdakfj kadjsf  adsfasdfasdf")
          .font(.system(size: 15))
          
      }
      Text("2d")
        .font(.system(size: 14))
        .foregroundStyle(.gray)
        .padding(.top)
    }
  }
  
}

#Preview {
  FeedCell()
}
