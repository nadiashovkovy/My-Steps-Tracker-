//
//  SettingsView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/14/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            VStack {
                
                Text("Settings")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.leading, 25)
                .padding(.bottom, 0)
                .frame(maxWidth:.infinity, alignment: .leading)
                
                RoundedRectangle(cornerRadius: 25.0)
                            .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
                            .frame(width: 350, height: 150)
                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
                            .padding(.bottom, 25)
                            .overlay(
                            Image("Profile-Pic")
                            .resizable()
                            .frame(width: 110.0, height: 110.0)
                            .padding(.leading, 200)
                            .padding(.bottom)
                            )

                                .overlay(
                                    Text("Edit Profile")
                                        .padding(.trailing, 160)
                                        .font(.title)
                                        .position(x:170, y: 50)
                                )
                //Text
                Text("General")
                    .font(.body)
                    .padding(.leading, 25)
                    .frame(maxWidth:.infinity, alignment: .leading)
                    
                HStack {
                Image("Bell-Image")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.leading, 25)
                    .frame(alignment: .leading)
                        
                Text("Notifcations")
                        .font(.body)
                        .padding(.leading, 25)
                        .frame(maxWidth:.infinity, alignment: .leading)
                    
                    }
                HStack {
                Image("More-Image")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.leading, 25)
                    .frame(alignment: .leading)
                    
                Text("More")
                    .font(.body)
                    .padding(.leading, 25)
                    .frame(maxWidth:.infinity, alignment: .leading)
                }
                
                //Text
                Text("Support")
                    .font(.body)
                    .padding(.leading, 25)
                    .frame(maxWidth:.infinity, alignment: .leading)
                
                HStack {
                Image("Contact-Image")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.leading, 25)
                    .frame(alignment: .leading)
                    
                Text("Contact")
                    .font(.body)
                    .padding(.leading, 25)
                    .frame(maxWidth:.infinity, alignment: .leading)
                }
                
                HStack {
                Image("Feedback-Image")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.leading, 25)
                    .frame(alignment: .leading)
                
                    Text("Feedback")
                        .font(.body)
                        .padding(.leading, 25)
                        .frame(maxWidth:.infinity, alignment: .leading)
                    
                }
                HStack {
                Image("About-Image")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.leading, 25)
                    .frame(alignment: .leading)
                    
                    Text("Info")
                        .font(.body)
                        .padding(.leading, 25)
                        .frame(maxWidth:.infinity, alignment: .leading)
                }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
}
