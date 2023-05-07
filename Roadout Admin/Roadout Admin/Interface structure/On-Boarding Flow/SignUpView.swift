//
//  SignUpView.swift
//  Roadout Admin
//
//  Created by Mihnea on 5/7/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var nameFieldText = ""
    @State private var emailFieldText : String = ""
    @State private var phoneNumberFieldText = ""
    @State private var passwordFieldText : String = ""
    @State private var confirmPasswordFieldText = ""
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var goToHome : Bool
    var body: some View {
        VStack{
            HStack {
                Text("Sign Up")
                    .font(.title3)
                    .padding(.leading)
                    .bold()
                
                Spacer()
                
                Button("Cancel") {
                    dismiss()
                }
                .padding(.trailing)
                .foregroundColor(Color("Dark Yellow"))
            }.padding(.bottom)
            
            TextField("Name", text: $nameFieldText)
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing])
            
            SecureField("Email", text: $emailFieldText)
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing])
            
            SecureField("Phone Number", text: $phoneNumberFieldText)
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing])
            
            SecureField("Password", text: $passwordFieldText)
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing])
            
            SecureField("Confirm Password", text: $confirmPasswordFieldText)
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing])
            
            Button("Sign In") {
                dismiss()
                goToHome = true
            }
                .frame(width: UIScreen.main.bounds.width/1.1, height: 40)
                .background(Color("Dark Yellow"))
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding(.top)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(goToHome: .constant(true))
    }
}
