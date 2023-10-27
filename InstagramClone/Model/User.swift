//
//  User.swift
//  InstagramClone
//
//  Created by Дарья Кукурудза on 24.10.2023.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "anubis", profileImageUrl: "anubis-1", fullname: "Anubis", bio: "God of death", email: "anubis.ennead@gmail.com"),
        .init(id: NSUUID().uuidString, username: "isis", profileImageUrl: "isis-1", fullname: "Isis", bio: "Godness of magic", email: "anubis.ennead@gmail.com"),
        .init(id: NSUUID().uuidString, username: "nephthys", profileImageUrl: "nephthys-1", fullname: "Nephthys", bio: "God of peace", email: "anubis.ennead@gmail.com"),
        .init(id: NSUUID().uuidString, username: "horus", profileImageUrl: "horus-1", fullname: "Horus", bio: "God of sky", email: "anubis.ennead@gmail.com"),
        .init(id: NSUUID().uuidString, username: "osiris", profileImageUrl: "osiris-1", fullname: "Osiris", bio: "God of fertility", email: "anubis.ennead@gmail.com")
    ]
}
