//
//  EditGoalView.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/14/22.
//

import SwiftUI

struct EditGoalView: View {
    var body: some View {
        Text("Edit My Goal")
        .font(.largeTitle)
        .fontWeight(.bold)
        .padding(.leading, 25)
        .padding(.bottom, 25)
        .frame(maxWidth:.infinity, alignment: .leading)
        
            
    }
}

struct EditGoalView_Previews: PreviewProvider {
    static var previews: some View {
        EditGoalView()
    }
}
