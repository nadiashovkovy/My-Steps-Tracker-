//
//  EditGoalView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/14/22.
//

import SwiftUI

struct EditGoalView: View {
    var body: some View {
        ZStack {
            VStack {
            
        Text("Edit My Goal")
        .font(.largeTitle)
        .fontWeight(.bold)
        .padding(.leading, 25)
        .padding(.bottom, 25)
        .frame(maxWidth:.infinity, alignment: .leading)
                
                RoundedRectangle(cornerRadius: 25.0)
                            .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
                            .frame(width: 350, height: 150)
                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
                            .overlay(
                Text("Current Goal :")
                    .padding(.trailing, 100)
                    .font(.title)
                    .position(x:170, y: 50)
                
                )
            }
        }
    }
}

struct EditGoalView_Previews: PreviewProvider {
    static var previews: some View {
        EditGoalView()
    }
}
