//
//  SignInView.swift
//  Roadout Admin
//
//  Created by Mihnea on 5/7/23.
//

import SwiftUI

struct SignInView: View {
    @State private var emailFieldText : String = ""
    @State private var passwordFieldText : String = ""
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var goToHome : Bool
    var body: some View {
        VStack{
            HStack {
                Text("Sign In")
                    .font(.title3)
                    .padding(.leading)
                    .bold()
                
                Spacer()
                
                Button("Cancel") {
                    dismiss()
                }
                .padding(.trailing)
                .foregroundColor(Color("Dark Orange"))
            }.padding(.bottom)
            
            TextField("Email or Phone Number", text: $emailFieldText)
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing])
            
            SecureField("Password", text: $passwordFieldText)
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing])
            
            Button("Sign In") {
                dismiss()
                goToHome = true
            }
                .frame(width: UIScreen.main.bounds.width/1.1, height: 40)
                .background(Color("Dark Orange"))
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding(.top)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(goToHome: .constant(true))
    }
}
