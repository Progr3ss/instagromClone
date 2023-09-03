//
//  FeedView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/2/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
      ScrollView {
        ForEach(0 ..< 100) { _ in
          FeedCell()
        }
      }
    }
}

#Preview {
    FeedView()
}
