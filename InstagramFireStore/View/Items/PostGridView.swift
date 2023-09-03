//
//  PostGridView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct PostGridView: View {
  private let items = [GridItem(), GridItem(), GridItem()]
  private let width = UIScreen.main.bounds.width / 3
    var body: some View {
      LazyVGrid(columns: items,spacing: 2, content: {
        ForEach(0..<10) {_ in
          Image("image3")
            .resizable()
            .scaledToFill()
            .frame(width: width,height: width)
            .clipped()
        }
      
      })
    }
}

#Preview {
    PostGridView()
}
