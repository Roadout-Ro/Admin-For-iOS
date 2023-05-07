//
//  ContentView.swift
//  Roadout Admin
//
//  Created by Mihnea on 5/7/23.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showSignIn = false
    @State private var showSignUp = false
    @State private var goToHome = false
    
    var body: some View {
        NavigationStack {
            VStack{
                Text(" ")
                Text("Welcome, Admin, to Roadout")
                    .padding(20)
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                Text(" ")
                HStack{
                    Image(systemName: "p.circle.fill")
                        .foregroundColor(Color("GoldBrown"))
                        .padding()
                        .font(.title)
                    VStack{
                        Text("Live Monitoring")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .bold()
                        Text("Always view live information about your parking and be in control")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.callout)
                            .foregroundColor(.secondary)
                    }
                }
                HStack{
                    Image(systemName: "clock.fill")
                        .foregroundColor(Color("Dark Orange"))
                        .padding()
                        .font(.title)
                    VStack{
                        Text("Your Schedule")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .bold()
                        Text("You set when to make your parking public so you never have to worry about it")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.callout)
                            .foregroundColor(.secondary)
                    }
                }
                HStack{
                    Image(systemName: "banknote.fill")
                        .foregroundColor(Color("Dark Yellow"))
                        .padding(12)
                        .font(.title)
                    VStack{
                        Text("Get Paid")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .bold()
                        Text("Get paid for the time drivers spend at your parking and make some extra money")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.callout)
                            .foregroundColor(.secondary)
                    }
                }
                Spacer()
                HStack{
                    Spacer()
                    Button("Sign In") {
                        showSignIn = true
                    }
                        .frame(width: UIScreen.main.bounds.width/2, height: 40)
                        .background(Color("Dark Orange"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.trailing)
                }
                HStack{
                    Spacer()
                    Button("Sign Up") {
                        showSignUp = true
                    }
                        .frame(width: UIScreen.main.bounds.width/1.5, height: 40)
                        .background(Color("Dark Yellow"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.trailing)
                }.padding(.bottom)
                
                HStack{
                    Image("Logo")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("[Privacy Police & Terms of Use](https://roadout.live)")
                        .tint(Color("B&W"))
                        .font(.footnote)
                        .bold()
                }
            }
            .sheet(isPresented: $showSignIn) {
                SignInView(goToHome: $goToHome)
                    .presentationDetents([.fraction(0.3)])
            }
            .sheet(isPresented: $showSignUp) {
                SignUpView(goToHome: $goToHome)
                    .presentationDetents([.fraction(0.5)])
            }
            .navigationDestination(isPresented: $goToHome) {
                HomeView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
