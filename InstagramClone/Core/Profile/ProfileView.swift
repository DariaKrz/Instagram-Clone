//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Дарья Кукурудза on 19.10.2023.
//

import SwiftUI


struct ProfileView: View {
    
    let user: User
    
  //  private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username})
    }
    
    var body: some View {
        ScrollView {
            
            ProfileHeaderView(user: user)
            
            PostGridView(post: posts)
        }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[2])
}
