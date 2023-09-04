//
//  AuthViewModel.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/4/23.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseAuth

class AuthViewModel: ObservableObject {
  @Published var userSession: FirebaseAuth.User?
  
  init() {
    userSession = Auth.auth().currentUser
  }
  func login() {
    print("Login")
  }
  
  func register(withEmail email: String, password: String) {
    print("Register")
    print("Register Email \(email)")
    print("Register password \(password)")
    Auth.auth().createUser(withEmail: email, password: password){ result , error in
      if let error = error {
        print(error.localizedDescription)
        return
      }
      guard let user = result?.user else {return}
      self.userSession = user
      print("Successfully registered user...")
    }
  }
  
  func signout() {
    print("Signout")
  }
  
  func fetchUser() {
    print("fetchUser")
  }
  
  func restPassword() {
    
  }

}
