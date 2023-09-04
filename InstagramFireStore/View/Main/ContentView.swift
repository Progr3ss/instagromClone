//
//  ContentView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/2/23.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
      Group {
        if viewModel.userSession == nil {
          LoginView()
        } else {
          MainTabView()
        }
      }
    }
}

#Preview {
    ContentView()
}
