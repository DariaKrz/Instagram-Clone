//
//  Post.swift
//  InstagramClone
//
//  Created by Дарья Кукурудза on 24.10.2023.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "A new picture",
            likes: 234,
            imageUrl: "anubis-1",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "A new picture",
            likes: 234,
            imageUrl: "isis-1",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "A new picture",
            likes: 234,
            imageUrl: "horus-1",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "A new picture",
            likes: 234,
            imageUrl: "osiris-1",
            timestamp: Date(),
            user: User.MOCK_USERS[3]
        )
    ]
}
