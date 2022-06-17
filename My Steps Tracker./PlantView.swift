//
//  CalendarView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/14/22.
//

import SwiftUI
import HealthKit


struct PlantView: View {
    
//    @Binding var stepGoal: Int
    
//    @State var stepGoal: Int = 10000
    
    
    //Code w chris
//    @Binding var stepGoal: Int
    
    @State var stepGoal = 10000
    
    @State var showPopup: Bool = false

    private var healthStore: HealthStore?
    
    @State private var steps: [Step] = [Step]()
    

    init () {
        healthStore = HealthStore()
    }

    
    

    
    
    private func updateUIFromStatistics( statisticsCollection: HKStatisticsCollection) {

        let now = Date()
        
        let startDate = Calendar.current.startOfDay(for: now)
        let endDate = Date()

        statisticsCollection.enumerateStatistics(from: startDate, to: endDate) { (statistics, stop) in

            let count = statistics.sumQuantity()?.doubleValue(for: .count())

            let step = Step(count: Int(count ?? 0), date: statistics.startDate);steps.removeAll();steps.append(step)
//            steps.append(step)

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
                RoundedRectangle(cornerRadius: 25.0)
                            .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
                            .frame(width: 350, height: 100)
                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
                            .overlay(
                                
                                VStack {
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
                }
            )
                
                
                ForEach(steps, id: \.id) { step in
//                ForEach(steps, id: \.id) { step in

//                let stepCount = step.count
                    let stepCount = 8000
//                    let stepGoal = 10000
                    let stepsLeft = (self.stepGoal) - (stepCount)
                    let stepPercentage = Double(stepCount) / Double(self.stepGoal)
                    let fewSteps = Int(Double(self.stepGoal/3))
                    let manySteps = Int(Double(2*((self.stepGoal)/3)))
                

                    
                    
                    let plantImage = (stepCount < fewSteps) ? "Sad-Plant" : (stepCount > manySteps) ? "Happy-Plant" : "Neutral-Plant"
                 
                        

                    
            Text("You are only \(stepsLeft) steps away from reaching your goal today!")
            .font(.body)
            .frame(maxWidth:.infinity, alignment: .leading)
            .padding(.top, 10)
            .padding(.bottom, 10)
            .padding(.leading, 25)


            CircularProgressView(progress: stepPercentage)
                            .frame(width: 300, height: 300)
                            .padding(.top, 25)
                            .padding(.bottom, 25)
                            
                                .overlay (
                                Image(plantImage)
                                .resizable()
                                .frame(width:275, height:275, alignment:.center)
                                )
                    
                    
                    RoundedRectangle(cornerRadius: 25.0)
                                .foregroundColor(Color(UIColor(named: "PrimaryColor")!))
                                .frame(width: 350, height: 50)
                                .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 7)
                                .overlay(
                                    
            Text("\(stepCount) / \(stepGoal) steps")
                    .font(.title)
                    .frame(maxWidth:.infinity, alignment: .center)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
            
                    )
                }
            }
        }
        
        .popupNavigationView(horizontalPadding: 40, show: $showPopup) {
            VStack {
                Text("Congratulation!!")
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





struct CircularProgressView: View {
    let progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color.accentColor.opacity(0.2),
                    lineWidth: 25
                )
            Circle()
                // 2
                .trim(from: 0, to: progress)
                .stroke(
                    Color.accentColor.opacity(0.5),
                    style: StrokeStyle(
                        lineWidth: 25,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))

            }
        .accentColor(Color(UIColor(named: "OutlineColor")!))
        }

    }





struct PlantView_Previews: PreviewProvider {
    
    @State static var stepGoal: Int = 10000
    
    static var previews: some View {
        PlantView()
        }
    }


