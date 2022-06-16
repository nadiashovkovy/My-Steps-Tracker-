//
//  TestView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/15/22.
//

import SwiftUI
import HealthKit

struct TestView: View {

    private var healthStore: HealthStore?
    @State private var steps: [Step] = [Step]()

    init () {
        healthStore = HealthStore()
    }

    private func updateUIFromStatistics( statisticsCollection: HKStatisticsCollection) {

        let startDate = Date()
        let endDate = Date()

        statisticsCollection.enumerateStatistics(from: startDate, to: endDate) { (statistics, stop) in

            let count = statistics.sumQuantity()?.doubleValue(for: .count())

            let step = Step(count: Int(count ?? 0), date: statistics.startDate)
            steps.append(step)
        }
    }

    var body: some View {
        List (steps, id: \.id) { step in

            let stepCount = step.count

            VStack {
                if step.count > 0 {
                    Text("Step count greater than 0")
                }
                else {
                    Text("Step Count: \(stepCount)")
                }
                Text(step.date, style: .date)
                    .opacity(0.5)
            }
        }
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
  }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
