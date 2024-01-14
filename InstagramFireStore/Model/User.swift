//
//  User.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 1/14/24.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Decodable{
  let username: String
  let fullName:String
  let email: String
  let profileImageUrl: String
  @DocumentID var id: String?
}
