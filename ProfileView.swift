//
//  ProfileView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/15/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var name: String = ""
    @State private var lastName: String = ""
    @State private var gender: String = ""
    @State private var phoneNumber: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                
        RoundedRectangle(cornerRadius: 0.0)
            .frame(maxWidth: .infinity, maxHeight: 350)
            .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
            .ignoresSafeArea()
            .position(x:200)
                
            .overlay(
            
        Image("Profile-Pic")
            .resizable()
            .frame(width: 150, height: 150, alignment: .center)
            .padding(.bottom, 300)
        
        )

            .overlay(
                
                VStack {
                TextField("First Name", text: $name)
                    .padding(.top, 250)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    .padding(.bottom, 50)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    TextField("Last Name", text: $lastName)
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                        .padding(.bottom, 50)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Gender", text: $gender)
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                        .padding(.bottom, 50)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Phone Number", text: $phoneNumber)
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                        .padding(.bottom, 50)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                }
                    )
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
