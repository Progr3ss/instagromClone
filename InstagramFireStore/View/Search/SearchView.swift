//
//  SearchView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/2/23.
//

import SwiftUI

struct SearchView: View {
  @State var searchText = ""
  @State var inSearchMode = false
    var body: some View {
      ScrollView {
        SearchBar(text: $searchText, isEditing: $inSearchMode)
          .padding()
        ZStack {
          if inSearchMode {
            UserListView()
          } else {
           PostGridView()
          }
        }
      }
    }
}

#Preview {
    SearchView()
}
