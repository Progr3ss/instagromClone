//
//  LoginView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
      NavigationView {
        ZStack {
          LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
          VStack {
            Image("Instagram_logo_white")
              .resizable()
              .scaledToFill()
              .frame(width: 2e0, height: 100)
            
            Spacer()
          }
        }

      }
    }
}

#Preview {
    LoginView()
}
