//
//  CreateUsernameView.swift
//  InstagramClone
//
//  Created by Дарья Кукурудза on 24.10.2023.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        
//        UserLoginView(temple: username, mainTitle: "Create Username", subTitle: "You'll use this username to sign in to your account", textFieldTitle: "Username")
        
                VStack(spacing: 12) {
        
                    Text("Create username")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top)
        
                    Text("You'll use this email to sign in to your account")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 24)
        
                    TextField("Username", text: $viewModel.username)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    
                    
                    NavigationLink {
                        CreatePasswordView()
                            .navigationBarBackButtonHidden()
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
    CreateUsernameView()
}



