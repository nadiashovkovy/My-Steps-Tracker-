//
//  CalendarView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/14/22.
//

import SwiftUI
import HealthKit


struct PlantView: View {

//        var plantImage = ""
//    @State private var plantImage = ""

    private var healthStore: HealthStore?
    
    @State private var steps: [Step] = [Step]()
    
    init () {
        healthStore = HealthStore()
    }

    
    
    
    private func updateUIFromStatistics( statisticsCollection: HKStatisticsCollection) {

        let startDate = Date()
        let endDate = Date.now

        statisticsCollection.enumerateStatistics(from: startDate, to: endDate) { (statistics, stop) in

            let count = statistics.sumQuantity()?.doubleValue(for: .count())

            let step = Step(count: Int(count ?? 0), date: statistics.startDate)
            steps.append(step)

        }
    }
    
    
    
    
    var body: some View {

        ZStack {
            
            VStack {
            
            Text("My Plant Step Tracker")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading, 25)
                    .padding(.bottom, 25)
                    .frame(maxWidth:.infinity, alignment: .leading)
                
                    .onAppear {
                        if let healthStore = healthStore {
                            healthStore.requestAuthorization {
                                success in
                                if success {
                                    healthStore.currentSteps {
                                        statisticsCollection in
                                        if let statisticsCollection = statisticsCollection {
                                            updateUIFromStatistics(statisticsCollection: statisticsCollection)
                                        }

                                    }
                                }
                            }
                        }
                    }
                
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
                
//                ForEach(steps, id: \.id) { step in
                    List(steps, id: \.id) { step in

//                let stepCount = step.count
                    let stepCount = 2000
                    let stepsLeft = 10000 - (stepCount)
                    let stepPercentage = Double(stepCount) / 10000.0
                    let fewSteps = Int(round(10000/3))
                    let manySteps = Int(round(2*(10000/3)))
                
                    let plantImage = (stepCount < fewSteps) ? "Sad-Plant" : (stepCount > manySteps) ? "Happy-Plant" : "Neutral-Plant"
                 
                    
            Text("You are only \(stepsLeft) steps away from reaching your goal today!")
            .font(.body)
            .frame(maxWidth:.infinity, alignment: .center)
            .padding(.top, 10)
            .padding(.bottom, 10)
//
//                    if (stepCount < round(10000 / 3)) {
//                       plantImage = "Sad-Plant"
//                    }
//                    else if (stepCount >= round(10000 / 3) && stepCount < round((10000 / 3) * 2)) {
//                        plantImage = "Neutral-Plant"
//                    }
//                    else {
//                       plantImage = "Happy-Plant"
//                    }

            CircularProgressView(progress: stepPercentage)
                            .frame(width: 300, height: 300)
                            .padding(.top, 25)
                            .padding(.bottom, 25)
                            
//                            .overlay (
//                                if (stepCount < 5000) {
                                .overlay (
                                Image(plantImage)
                                .resizable()
                                .frame(width:275, height:275, alignment:.center)
                                )

            Text("\(stepCount) / 10,000 steps")
                    .font(.title)
                    .frame(maxWidth:.infinity, alignment: .center)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    
            }
        }
            
    }
}





struct CircularProgressView: View {
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

            
        }

    }
}




struct PlantView_Previews: PreviewProvider {
    static var previews: some View {
        PlantView()
        }
    }

}
