//
//  UserCell.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
      HStack {
        Image("image4")
          .resizable()
          .scaledToFill()
          .frame(width: 48,height: 48)
          .clipShape(Circle())
        
        VStack(alignment: .leading) {
          Text("Princianna")
            .font(.system(size: 14, weight: .semibold))
          Text("Princianna")
            .font(.system(size: 14))
        }
        Spacer()
      }
    }
}

#Preview {
    UserCell()
}
