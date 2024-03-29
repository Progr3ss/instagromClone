//
//  SearchViewModel.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 1/14/24.
//

import Foundation
import SwiftUI

class SearchViewModel: ObservableObject {
  @Published var users = [User]()
  
  init(){
    fetchUsers()
  }
  
  func fetchUsers() {
    COLLECTION_USERS.getDocuments { snapshot, _ in
      
      guard let documents = snapshot?.documents else { return}

      self.users = documents.compactMap({ try? $0.data(as: User.self)})
      
      print("FetchedUsers: \(self.users)")
    }
  }
  
  func filteredUsers(_ query: String) -> [User] {
    let lowercasedQuery = query.lowercased()
    return users.filter ({ $0.fullName.lowercased().contains(lowercasedQuery) || $0.username.contains(lowercasedQuery)})
  }
}
