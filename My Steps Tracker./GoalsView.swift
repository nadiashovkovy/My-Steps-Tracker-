//
//  GoalsView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/14/22.
//

import SwiftUI

struct GoalsView: View {
    
    @State var showPopup: Bool = false
//
    @State var stepGoal = 10000

    
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
                Text("0 Day Streak.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(UIColor(named: "OutlineColor")!))
                    .padding(.leading, 25)
                    .padding(.bottom, 25)
                    .frame(maxWidth:.infinity, alignment: .leading)
            
                RoundedRectangle(cornerRadius: 25.0)
                            .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
                            .frame(width: 350, height: 150)
                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
                            .padding(.bottom, 25)
                            .overlay(
    HStack {
        Image("Trophy-Guy")
            .resizable()
            .frame(width:120, height:130, alignment: .leading)
            .padding(.bottom, 25)
        VStack {
                                    
                Text("Current Goal :")
                    .font(.title)
                    .padding(.top, 10)
                    .padding(.bottom, 25)
                
                        Text ("\(stepGoal) steps daily.")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(UIColor(named: "OutlineColor")!))
                            .padding(.bottom, 25)
                    
        }
    }
)
                
                
                
                
                
                RoundedRectangle(cornerRadius: 25.0)
                            .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
                            .frame(width: 350, height: 150)
                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
                            .padding(.bottom, 100)
                            .overlay(
                                VStack {
                Text("Edit Goal")
                    .padding(.trailing, 180)
                    .font(.title)
                    .position(x:170, y: 50)
                                    
                                    
                                    
                                    Button("Edit Goal") {
                                        withAnimation {
                                            showPopup.toggle()
                                        }
                                    }
                                    .font(.body)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.trailing, 20)
                                    .padding(.leading, 20)
                                    .background(Color(UIColor(named:"AccentColor")!))
                                    .cornerRadius(15.0)
                                    .padding(.trailing, 150)
                                    .padding(.bottom, 125)
                                    
                                    
                    }
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
                .position(x:180, y:175)
                .aspectRatio(contentMode: .fit)
                .frame(width: 130.0, height: 130.0)
                .padding(.trailing, 50)
            

        }

            
    }
        .popupNavigationView(horizontalPadding: 40, show: $showPopup) {
            VStack {
                
            Text("Edit Goal :")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 25)
                
                TextField("Enter your new goal here", value: $stepGoal, formatter: NumberFormatter())
                    .keyboardType(.numberPad)
                    .padding()
                .background(Color.gray.opacity(0.2).cornerRadius(15))
                .font(.headline)
                .frame(width: 250, height: 25, alignment: .center)
                .padding(.leading, 25)
                .padding(.trailing, 25)
                
                Text("steps per day.")
                    .font(.headline)
                    .padding(.top, 25)
                    .padding(.bottom, 150)
                

            }
            
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Close") {
                            withAnimation{showPopup.toggle()}
                        }
                    }
                }
            }
        }
    }








struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsView()
    }
}

