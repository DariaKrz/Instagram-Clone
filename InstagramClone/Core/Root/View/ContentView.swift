//
//  ContentView.swift
//  InstagramClone
//
//  Created by Дарья Кукурудза on 19.10.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registrationViewModel)
            } else {
                MainTabView()
            }
                
        }
    }
}

#Preview {
    ContentView()
}
