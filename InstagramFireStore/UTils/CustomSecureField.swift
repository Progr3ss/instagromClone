//
//  CustomSecureField.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct CustomSecureField: View {
  @Binding var text: String
  let placeholder: Text
  let imageName: String
  
    var body: some View {
      ZStack(alignment: .leading) {
        if text.isEmpty {
          placeholder
            .foregroundColor(Color(.init(white:1, alpha: 0.8)))
            .padding(.leading,40)
          
        }
        HStack {
          Image(systemName: "lock")
            .resizable()
            .scaledToFill()
            .frame(width: 20, height: 20)
            .foregroundColor(.white)
          
          SecureField("", text: $text)
          
        }
      }
    }
}

#Preview {
  CustomSecureField(text: .constant(""), placeholder: Text("Email"), imageName: "envelope")
}
