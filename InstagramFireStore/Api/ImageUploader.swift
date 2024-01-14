//
//  ImageUploader.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/4/23.
//

import Foundation
import Firebase
import FirebaseStorage

struct ImageUploader {
  static func uploadImage(image: UIImage, onSuccess: @escaping (String) -> Void, onFailure: @escaping (Error) -> Void) {
    guard let imageData = image.jpegData(compressionQuality: 0.5) else {
      let error = NSError(domain: "ImageUploaderError", code: 1, userInfo: [NSLocalizedDescriptionKey: "Failed to convert image to data"])
      onFailure(error)
      return
    }
    
    let fileName = NSUUID().uuidString
    let ref = Storage.storage().reference(withPath: "/profile_image/\(fileName)")
    
    ref.putData(imageData, metadata: nil) { _, error in
      if let error = error {
        onFailure(error)
      } else {
        ref.downloadURL { url, error in
          if let error = error {
            onFailure(error)
          } else {
            if let imageUrl = url?.absoluteString {
              onSuccess(imageUrl)
            } else {
              let error = NSError(domain: "ImageUploaderError", code: 2, userInfo: [NSLocalizedDescriptionKey: "Failed to get image URL"])
              onFailure(error)
            }
          }
        }
      }
    }
  }
}
