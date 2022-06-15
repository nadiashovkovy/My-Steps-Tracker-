//
//  GoalsView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/14/22.
//

import SwiftUI

struct GoalsView: View {
    var body: some View {
        NavigationView {
            
        ZStack {
            VStack{
            
            Text("Track Goals")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.leading, 25)
            .padding(.bottom, 25)
            .frame(maxWidth:.infinity, alignment: .leading)
            
                Text("Congratulations! You Have a ")
                    .font(.body)
                    .padding(.leading, 25)
                    .padding(.bottom, 0)
                    .frame(maxWidth:.infinity, alignment: .leading)
                //Insert variable here
                Text("3 Day Streak.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(UIColor(named: "AccentColor")!))
                    .padding(.leading, 25)
                    .padding(.bottom, 25)
                    .frame(maxWidth:.infinity, alignment: .leading)
            
                
                RoundedRectangle(cornerRadius: 25.0)
                            .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
                            .frame(width: 350, height: 150)
                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
                            .overlay(
                                VStack {
                Text("Edit Goal")
                    .padding(.leading, 200)
                    .font(.title)
                    .position(x:170, y: 50)
                                    
                                    NavigationLink(
                                        destination:EditGoalView()) {

                                                Text("Edit Profile")
                                                .font(.body)
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.center)
                                                .frame(width: 150.0, height: 50.0)
                                                .background(Color(UIColor(named:          "AccentColor")!))
                                                .cornerRadius(15.0)
                                                .padding(.bottom, 25)
                                                .padding(.leading, 160)
//
                              
                                        }
            
                
                                    
                                    
                    }
                )
                
                RoundedRectangle(cornerRadius: 25.0)
                            .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
                            .frame(width: 350, height: 250)
                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
                            .padding(.bottom, 100)
                            .overlay (
                                Text("Past Progress : ")
                                    .padding(.trailing, 125)
                                    .font(.title)
                                    .position(x:170, y: 50)
                            )

            }
            Image("Five-Stars-Thumb")
            .resizable()
            .position(x:180, y:-180
            )
            .aspectRatio(contentMode: .fit)
            .frame(width: 130.0, height: 130.0)
            
            Image("Note-Taking")
                .resizable()
                .position(x:0, y:-50)
                .aspectRatio(contentMode: .fit)
                .frame(width: 130.0, height: 130.0)
                .padding(.trailing, 50)
            

        }

            
    }
}
    
}






struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsView()
    }
}
