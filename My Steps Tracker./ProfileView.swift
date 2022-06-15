//
//  ProfileView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/14/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            VStack {
                RoundedRectangle(cornerRadius: 0)
                            .foregroundColor(Color(UIColor(named: "AccentColor")!))
                            .frame(maxWidth: .infinity, maxHeight: 350)
                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
                overlay (
                Image("PFP")
                )
                Text("Edit My Profile")
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
