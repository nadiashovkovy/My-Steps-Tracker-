//
//  HomeView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/14/22.
//

//import SwiftUI
//
//
//struct HomeView: View {
//    var body: some View {
//        
//    ZStack {
//        VStack{
//        Text("Homepage")
//            .font(.largeTitle)
//            .fontWeight(.bold)
//            .padding(.leading, 25)
//            .padding(.bottom, 25)
//            .frame(maxWidth:.infinity, alignment: .leading)
//            
//        Image("Trophy-Guy")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(maxWidth: 400, maxHeight: 300)
//                .padding(.bottom, 20)
//
//        RoundedRectangle(cornerRadius: 25.0)
//                    .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
//                    .frame(width: 350, height: 150)
//                    .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
//                    .overlay(
//                    Text("Welcome to")
//                        .padding(.trailing, 200)
//                        .font(.headline)
//                        .position(x:180, y: 30)
//                    )
//                    .overlay (
//                    Text("My Steps Tracker")
//                        .fontWeight(.bold)
//                        .padding(.top, 20)
//                        .font(.title)
//                        .position(x:180, y: 60)
//                        .foregroundColor(Color(UIColor(named: "OutlineColor")!))
//
//                    )
//                }
//        }
//    }
//}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
//
//
