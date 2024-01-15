//
//  NotificationView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/2/23.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
      ScrollView {
        LazyVStack(spacing: 20) {
          ForEach(0..<20) {_ in
            NotificationCell()
              .padding(.top)
          }
        }
      }
    }
}

#Preview {
    NotificationView()
}
