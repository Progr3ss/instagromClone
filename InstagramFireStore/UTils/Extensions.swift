//
//  Extensions.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import Foundation
import UIKit

extension UIApplication {
  func endEditing() {
    sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}
