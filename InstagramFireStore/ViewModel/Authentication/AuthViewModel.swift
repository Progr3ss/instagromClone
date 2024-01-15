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
  static let shared = AuthViewModel()
  init() {
    userSession = Auth.auth().currentUser
    fetchUser()
  }
  
  func login(withEmail email: String, password: String) {
    Auth.auth().signIn(withEmail:email, password: password) { result, error in
      if let error = error {
        print("DEBUG: Login failed \(error.localizedDescription)")
        return
      }
      guard let user = result?.user  else {return}
      self.userSession = user
      print("Firebase User login in ..")
    }
  }
  
  func register(withEmail email: String, password: String, image: UIImage?, fullName: String, userName: String) {
    print("Register")
    
    guard let image = image else {
      print("Firebase image retuned nil ")
      return
    }
    
    ImageUploader.uploadImage(image: image) { imageUrl in

     print("registerImage \(imageUrl)")
      
      Auth.auth().createUser(withEmail: email, password: password) {result, error in
        if let error = error {
          print("Firebase User authentication error \(error.localizedDescription)")
          return
        }
        guard let user = result?.user else {return}
        
        self.userSession = user
        print("Successfully registered user... \(user)")
        
        let data = [
                      "email": email,
                      "username": userName,
                      "fullName": fullName,
                      "profileImageUrl": imageUrl,
                      "uid": user.uid
                  ]
        
          COLLECTION_USERS.document(user.uid).setData(data) { error in
            if let error = error {
                print("DEBUG: failed to upload user data \(error.localizedDescription)")
                return
            }

            self.userSession = user
            print("Successfully uploaded user data")
        }
      }
    } onFailure: {error in
      print("Firebase Uploading image erorr \(error.localizedDescription)")
    }
  }

  func signout() {
    print("Signout")
    self.userSession = nil
    try? Auth.auth().signOut()
  }
  
  func fetchUser() {
    guard let uid  = userSession?.uid else { return }
    COLLECTION_USERS.document(uid).getDocument{ snapshot, _ in
      guard let dictionary = snapshot?.data() else {return}
      guard let username = dictionary["username"] as? String else {return}
      guard let email = dictionary["email"] as? String else {return}
      guard let profileImageUrl = dictionary["profileImageUrl"] as? String else {return}
      guard let fullName = dictionary["fullName"] as? String else {return}
      guard let uid = dictionary["uid"] as? String else {return}
      
      guard let user = try? snapshot?.data(as: User.self) else { return }
      
//      let user = User(username: username, fullName: fullName, email:email, profileImageUrl: profileImageUrl, id: uid)
      print("Firebase fetched User: \(String(describing: snapshot?.data()))")
      print("DEBUG: Username is \(user.username)")
      print("DEBUG: email is \(user.email)")
      print("DEBUG: fullName is \(user.fullName)")
    }
   
  }
  
  func restPassword() {
    
  }
  
}
