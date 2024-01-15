//
//  UserCell.swift
//  InstagramFireStore
//
//  Created by martin chibwe on 9/3/23.
//

import SwiftUI

struct UserCell: View {
    let user: User
    
    var body: some View {
        HStack(spacing: 10) {
            AsyncImage(url: URL(string: user.profileImageUrl)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .clipShape(Circle())
                case .failure:
                    Image(systemName: "exclamationmark.triangle")
                        .frame(width: 48, height: 48)
                        .foregroundColor(.red) // Adjust color as needed
                @unknown default:
                    EmptyView()
                }
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.username)
                    .font(.system(size: 14, weight: .semibold))
                Text(user.fullName)
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
        .padding(8)
    }
}


//#Preview {
//    UserCell()
//}
