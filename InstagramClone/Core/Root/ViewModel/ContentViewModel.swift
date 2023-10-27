//
//  ContentViewModel.swift
//  InstagramClone
//
//  Created by Дарья Кукурудза on 24.10.2023.
//

import Foundation
import Firebase
import Combine

//@MainActor
class ContentViewModel: ObservableObject {
    
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        
    }
    
    func setupSubscribers() {
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
    }
}
