//
//  UserLoginView.swift
//  InstagramClone
//
//  Created by Дарья Кукурудза on 24.10.2023.
//

import SwiftUI

struct UserLoginView: View {
    
    @State var temple = ""
    let mainTitle, subTitle, textFieldTitle: String
    
    var body: some View {
        VStack(spacing: 12) {
            
            Text(mainTitle)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text(subTitle)
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField(textFieldTitle, text: $temple)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            Button {
                print("Login")
            } label: {
                Text("Login")
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
    }
}

#Preview {
    UserLoginView(temple: "", mainTitle: "Main Title", subTitle: "Sub Title", textFieldTitle: "Input")
}
