//
//  SearchView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/2/23.
//

import SwiftUI

struct SearchView: View {
  @State var searchText = ""
    var body: some View {
      ScrollView {
       SearchBar(text: $searchText)
          .padding()
        
        //Search Bar
        
      }
    }
}

#Preview {
    SearchView()
}
