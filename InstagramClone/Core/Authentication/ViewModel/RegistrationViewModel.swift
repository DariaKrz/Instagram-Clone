//
//  RegistrationViewModel.swift
//  InstagramClone
//
//  Created by Дарья Кукурудза on 25.10.2023.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
    }
}
