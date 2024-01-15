//
//  User.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 1/14/24.
//

import Foundation
import FirebaseFirestoreSwift

struct User:Identifiable, Decodable{
  let username: String
  let fullName:String
  let email: String
  let profileImageUrl: String
  @DocumentID var id: String?
  
  var isCurrentUser: Bool{ return AuthViewModel.shared.userSession?.uid == id}
}
