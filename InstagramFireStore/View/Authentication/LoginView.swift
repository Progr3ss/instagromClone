//
//  LoginView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct LoginView: View {
  @State private var email = ""
  @State private var password = ""
    var body: some View {
      NavigationView {
        ZStack {
          LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
          VStack {
            Image("Instagram_logo_white")
              .resizable()
              .scaledToFill()
              .frame(width: 200, height: 100)
          
            VStack(spacing: 20) {
              CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
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
            HStack {
              Spacer()
              Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Forget Password")
                  .font(.system(size: 13, weight: .semibold))
                  .foregroundColor(.white)
                  .padding(.top)
                  .padding(.trailing,28)
                
              })
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Text("Sign In")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(width: 360, height: 50)
                .background(.purple)
                .clipShape(Capsule())
                .padding()
            })
            Spacer()
           
            NavigationLink(destination: RegistrationView().navigationBarBackButtonHidden(true)) {
              HStack {
                Text("Don't have an account?")
                  .font(.system(size: 14))
                Text("Sign Up")
                  .font(.system(size: 15, weight: .semibold))
              }.foregroundColor(.white)
            }.padding()

          }
        }
        .padding(.top, -10)

      }
    }
}

#Preview {
    LoginView()
}
