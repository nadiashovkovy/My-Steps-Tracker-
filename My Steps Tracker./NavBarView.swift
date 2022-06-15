//
//  NavBarView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/14/22.
//

import SwiftUI
import HealthKit

struct NavBarView: View {
    
    // healthStore
    
    private var healthStore: HealthStore?
    
    init () {
        healthStore = HealthStore()
    }

    var body: some View {
    
        
        TabView {
            PlantView()
                .tabItem {
                    Image(systemName:
                            "leaf")
                }
            GoalsView()
                .tabItem {
                    Image(systemName:
                            "square.and.pencil")
                }
            SettingsView()
                .tabItem {
                    Image(systemName:
                            "person")
                }
        }
        
        .onAppear {
            if let healthStore = healthStore {
                healthStore.requestAuthorization {
                    success in
                }
            }
        }
    }
    
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
