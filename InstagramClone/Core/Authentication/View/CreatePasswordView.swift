//
//  PasswordView.swift
//  InstagramClone
//
//  Created by Дарья Кукурудза on 24.10.2023.
//

import SwiftUI

struct CreatePasswordView: View {
    
    @EnvironmentObject var viewModel: RegistrationViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
//        UserLoginView(temple: email, mainTitle: "Add your email", subTitle: "You'll use this email to sign in to your account", textFieldTitle: "Email")
        
        VStack(spacing: 12) {
        
            Text("Create a password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
        
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
        
            SecureField("Password", text: $viewModel.password)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
    
            NavigationLink {
                CompleteSignUpView()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 44)
                    .foregroundColor(.white)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
        
            Spacer()
        }

        
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CreatePasswordView()
}
