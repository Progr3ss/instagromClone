//
//  UploadPostView.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/2/23.
//

import SwiftUI

struct UploadPostView: View {
  @State private var selectedImage: UIImage?
  @State var postImage: Image?
  @State var captionText = ""
    var body: some View {
      if postImage == nil {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
          Image("plus_photo")
            .resizable()
            .renderingMode(.template)
            .scaledToFill()
            .frame(width: 180, height: 180)
            .clipped()
            .padding(.top,56)
            .foregroundColor(.black)
        })
      } else {
        HStack(alignment:.top) {
          Image("image5")
            .resizable()
            .scaledToFill()
            .frame(width: 96, height: 96)
            .clipped()
            
          TextField("Enter your cpation", text: $captionText)
           
        }
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
          Text("Share")
            .font(.system(size: 16, weight: .semibold))
            .frame(width: 360, height: 50)
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(5)
          
        }).padding()
        
      }
      Spacer()
    }
}

#Preview {
    UploadPostView()
}
