//
//  CalendarView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/14/22.
//

import SwiftUI
import HealthKit



//
//class StepsToday {
//
//    var healthStore: HKHealthStore?
//    var steps = HealthStore.returnStepType
//
//    init() {
//        if HKHealthStore.isHealthDataAvailable() {
//            healthStore = HKHealthStore()
//
//        }
//    }
//
//}






struct PlantView: View {
    
    @State private var currentDate: String = ""
    
    var body: some View {
        ZStack {
            VStack{
            Text("My Plant Step Tracker")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading, 25)
                    .padding(.bottom, 25)
                    .frame(maxWidth:.infinity, alignment: .leading)

                
            Text("Today is:")
            .font(.body)
            .padding(.leading, 25)
            .padding(.bottom, 0)
            .frame(maxWidth:.infinity, alignment: .leading)
                
                
            //Curent date
            Text(Date(), style: .date) 
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor(named: "OutlineColor")!))
            .padding(.leading, 25)
            .padding(.bottom, 0)
            .frame(maxWidth:.infinity, alignment: .leading)
                
                
                
            //Insert Variable
            Text("You are only steps away from reaching your goal today!")
            .font(.body)
            .padding(.leading, 25)
            .padding(.bottom, 25)
            .frame(maxWidth:.infinity, alignment: .leading)

            CircularProgressView(progress: 0.25)
                            .frame(width: 300, height: 300)
            Text("2,500 / 10,000 steps")
                    .font(.title)
                    .padding(.top, 25)
                
        }
                    
}
}
}



struct CircularProgressView: View {
    // 1
    let progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color.accentColor.opacity(0.4),
                    lineWidth: 25
                )
            Circle()
                // 2
                .trim(from: 0, to: progress)
                .stroke(
                    Color.accentColor,
                    style: StrokeStyle(
                        lineWidth: 25,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
            
            
//                .overlay (
//
//
//                     )
            
            
            
        }
    }
}


struct PlantView_Previews: PreviewProvider {
    static var previews: some View {
        PlantView()
    }
}
