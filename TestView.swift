//
//  TestView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/15/22.
//

import SwiftUI
import HealthKit


class currentSteps {
    
    var healthStore: HKHealthStore?
    
    init () {
    if HKHealthStore.isHealthDataAvailable() {
        healthStore = HKHealthStore()
    }
}
    
//    func currentSteps(completion: @escaping (Bool) -> Void) {
//        let stepType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
//    }
}

struct TestView: View {
    var body: some View {
        Text("My step count is: ")
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
