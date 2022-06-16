//
//  GoalsViewTest.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/15/22.
//

//import SwiftUI
//
//struct GoalsViewTest: View {
//    let stepGoal = 0
//    var body: some View {
//        NavigationView {
//            
//        ZStack {
//            VStack{
//            
//            Text("Track Goals")
//            .font(.largeTitle)
//            .fontWeight(.bold)
//            .padding(.leading, 25)
//            .padding(.bottom, 25)
//            .frame(maxWidth:.infinity, alignment: .leading)
//            
//                Text("Congratulations! You Have a ")
//                    .font(.body)
//                    .padding(.leading, 25)
//                    .padding(.bottom, 0)
//                    .frame(maxWidth:.infinity, alignment: .leading)
//                //Insert variable here
//                Text("0 Day Streak.")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .foregroundColor(Color(UIColor(named: "OutlineColor")!))
//                    .padding(.leading, 25)
//                    .padding(.bottom, 25)
//                    .frame(maxWidth:.infinity, alignment: .leading)
//            
//                RoundedRectangle(cornerRadius: 25.0)
//                            .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
//                            .frame(width: 350, height: 150)
//                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
//                            .padding(.bottom, 25)
//                            .overlay(
//    HStack {
//        Image("Trophy-Guy")
//            .resizable()
//            .frame(width:120, height:130, alignment: .leading)
//            .padding(.bottom, 25)
//        VStack {
//                                    
//                Text("Current Goal :")
//                    .font(.title)
//                    .padding(.top, 10)
//                    .padding(.bottom, 25)
//                
//                        Text ("\(stepGoal) steps daily.")
//                            .font(.title2)
//                            .fontWeight(.bold)
//                            .foregroundColor(Color(UIColor(named: "OutlineColor")!))
//                            .padding(.bottom, 25)
//                    
//        }
//    }
//)
//                
//                
//                
//                
//                
//                RoundedRectangle(cornerRadius: 25.0)
//                            .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
//                            .frame(width: 350, height: 150)
//                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
//                            .padding(.bottom, 100)
//                            .overlay(
//                                VStack {
//                Text("Edit Goal")
//                    .padding(.leading, 200)
//                    .font(.title)
//                    .position(x:170, y: 50)
//                                    
//                                    NavigationLink(
//                                        destination:EditGoalView()) {
//                                                Text("Edit Goal")
//                                                .font(.body)
//                                                .foregroundColor(Color.white)
//                                                .multilineTextAlignment(.center)
//                                                .frame(width: 150.0, height: 50.0)
//                                                .background(Color(UIColor(named:          "AccentColor")!))
//                                                .cornerRadius(15.0)
//                                                .padding(.bottom, 125)
//                                                .padding(.leading, 160)
//                                            }
//                                        
//            
//                
//                                    
//                                    
//                    }
//                )
//    
//
//            }
//            Image("Five-Stars-Thumb")
//            .resizable()
//            .position(x:180, y:-180
//            )
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 130.0, height: 130.0)
//            
//            Image("Note-Taking")
//                .resizable()
//                .position(x:0, y:175)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 130.0, height: 130.0)
//                .padding(.trailing, 50)
//            
//
//        }
//
//            
//    }
//}
//    
//}
//
//
//
//
//
//
//struct GoalsViewTest_Previews: PreviewProvider {
//    static var previews: some View {
//        GoalsViewTest()
//    }
//}
//
