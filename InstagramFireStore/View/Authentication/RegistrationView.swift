//
//  RegistrationView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct RegistrationView: View {
  @State private var email = ""
  @State private var password = ""
  @State private var fullName = ""
  @State private var userName = ""
  @Environment(\.presentationMode) var mode
    var body: some View {
      ZStack {
        LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
          .ignoresSafeArea()
        VStack {
          Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image("plus_photo")
              .resizable()
              .renderingMode(.template)
              .scaledToFill()
              .frame(width: 140 , height: 140)
              .foregroundColor(.white)
          })
        
          VStack(spacing: 20) {
            CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
              .padding()
              .background(Color(.init(white: 1, alpha: 0.15)))
              .cornerRadius(10)
              .foregroundColor(.white)
            CustomSecureField(text: $password, placeholder: Text("UserName"), imageName: "lock")
              .padding()
              .background(Color(.init(white: 1, alpha: 0.15)))
              .cornerRadius(10)
              .foregroundColor(.white)
            CustomTextField(text: $email, placeholder: Text("Full Name"), imageName: "envelope")
              .padding()
              .background(Color(.init(white: 1, alpha: 0.15)))
              .cornerRadius(10)
              .foregroundColor(.white)
            CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "lock")
              .padding()
              .background(Color(.init(white: 1, alpha: 0.15)))
              .cornerRadius(10)
              .foregroundColor(.white)
          }
       
          
          Button(action: {}, label: {
            Text("Sign Up")
              .font(.headline)
              .foregroundStyle(.white)
              .frame(width: 360, height: 50)
              .background(.purple)
              .clipShape(Capsule())
              .padding()
          })
          Spacer()
          Button(action: {mode.wrappedValue.dismiss()}, label: {
            HStack {
              Text("Already have an account?")
                .font(.system(size: 14))
              Text("Sign In")
                .font(.system(size: 15, weight: .semibold))
            }.foregroundColor(.white)
          })

        }
      }
      .padding(.top, -10)

    }
    
}

#Preview {
    RegistrationView()
}
