//
//  HomeView.swift
//  Roadout Admin
//
//  Created by Mihnea on 5/7/23.
//

import SwiftUI
import GoogleMaps

struct HomeView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    GoogleMapsView(latitude: 46.7712, longitude: 23.6236, zoom: 11.0)
                        .frame(height: UIScreen.main.bounds.height/6)
                        .cornerRadius(10)
                    HStack{
                        VStack {
                            Text("DISTANCE")
                                .bold()
                                .foregroundColor(.secondary)
                                .font(.footnote)
                            HStack{
                                Image(systemName: "ruler.fill")
                                    .foregroundColor(Color("Main Yellow"))
                                    .font(.callout)
                                Text("2.3 km")
                                    .font(.callout)
                            }
                        }
                        VStack {
                            Text("BATTERY")
                                .bold()
                                .foregroundColor(.secondary)
                                .font(.footnote)
                            HStack{
                                Image(systemName: "battery.75")
                                    .foregroundColor(Color("Main Yellow"))
                                    .font(.callout)
                                Text("60%")
                                    .font(.callout)
                            }
                        }
                        .padding(.leading)
                        VStack {
                            Text("PRICE")
                                .bold()
                                .foregroundColor(.secondary)
                                .font(.footnote)
                            HStack{
                                Image(systemName: "banknote.fill")
                                    .foregroundColor(Color("Main Yellow"))
                                    .font(.callout)
                                Text("5 RON/hr")
                                    .font(.callout)
                            }
                        }.padding(.leading)
                    }
                }
                
                Section {
                    HStack{
                        Spacer()
                        Button("RESERVED") {}
                            .tint(Color("Dark Orange"))
                            .buttonStyle(.bordered)
                        Spacer()
                    }
                    Text("Somebody reserved your parking spot for **14 mins**.")
                        .font(.callout)
                    Text("You can cancel their reservation but they will be fully refunded and your rating will go down.")
                        .font(.callout)
                    HStack {
                        Button("Contact") {}
                            .frame(width: UIScreen.main.bounds.width/2.5, height: 40)
                            .background(Color("Main Yellow"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        Spacer()
                        Button("Contact") {}
                            .frame(width: UIScreen.main.bounds.width/2.5, height: 40)
                            .background(Color(UIColor.systemGray6))
                            .foregroundColor(Color("Main Yellow"))
                            .cornerRadius(10)
                    }
                }
                
                Section {
                    HStack{
                        Text("Schedule")
                            .bold()
                        Spacer()
                        Button("Edit") {}
                            .foregroundColor(Color("Dark Orange"))
                    }
                    HStack{
                        Text("MON-FRI")
                            .foregroundColor(.secondary)
                            .bold()
                            .font(.footnote)
                        Spacer()
                        Text("8:00")
                            .foregroundColor(Color("Dark Orange"))
                        + Text(" - ")
                            .foregroundColor(.secondary)
                        + Text("14:30")
                            .foregroundColor(Color("Dark Orange"))
                        + Text(" & ")
                            .foregroundColor(.secondary)
                        + Text("16:00")
                            .foregroundColor(Color("Dark Orange"))
                        + Text(" - ")
                            .foregroundColor(.secondary)
                        + Text("19:00")
                            .foregroundColor(Color("Dark Orange"))
                    }
                    HStack{
                        Text("SAT-SUN")
                            .foregroundColor(.secondary)
                            .bold()
                            .font(.footnote)
                        Spacer()
                        Text("Offline")
                            .foregroundColor(Color("Dark Orange"))
                    }
                }
            }
            .navigationTitle("Roadout Admin")
        }
        .onAppear {
            GMSServices.provideAPIKey("AIzaSyBACpq0QpQkoIdNjMbsu3qOcYBlWvZomsY")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
