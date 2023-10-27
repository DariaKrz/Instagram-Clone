//
//  PostGridView.swift
//  InstagramClone
//
//  Created by Дарья Кукурудза on 24.10.2023.
//

import SwiftUI

struct PostGridView: View {
    
    var post: [Post]
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 1) {
                ForEach(post) { post in
                    Image(post.imageUrl)
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageDimension, height: imageDimension)
                        .clipped()
                }
        }
    }
}

#Preview {
    PostGridView(post: Post.MOCK_POSTS)
}
