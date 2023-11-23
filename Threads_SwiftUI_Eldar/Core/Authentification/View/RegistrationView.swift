//
//  RegistrationView.swift
//  Threads_SwiftUI_Eldar
//
//  Created by Eldar Gaiypov on 23/11/23.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View
    Vstack {
        Spacer()
        
        Image("threads-app-icon")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding()
        
        Vstack {
            TextField("Enter your email", text: $viewModel.email)
                .autocapitalization(.none)
                .modifier(ThreadsTextFieldModifier())
            
            SecureField("Enter your passwor", text:
                            $viewModel.password)
            .modifier(ThreadsTextFieldModifier())
            
            TextField("Enter your full name", text:
                        $viewModel.fullName)
            .modifier(ThreadsTextFieldModifier())
            
            TextField("Enter your username", text: $viewModel.username)
                .autocapitalization(.none)
                .modifier(ThreadsTextFieldModifier())
        }
        
        Button {
            Task { try await viewModel.createUser() }
        } label: {
            Text("Sign Up")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 352, height: 44)
                .background(.black)
                .cornerRadius(8)
        }
        .padding(.vertical)
        
        Spacer()
        
        Divider()
        
        Button {
            dismiss()
        } label: {
            HStack(spacing: 3) {
                Text("Already have an account?")
                
                Text("Sign In")
                    .fontWeight(.semibold)
            }
            .foregroundColor(.black)
            .font(.footnote)
        }
        .padding(.vertical, 16)
    }
}
}
#Preview {
    RegistrationView()
}
