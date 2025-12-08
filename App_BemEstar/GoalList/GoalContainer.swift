//
//  GoalContainer.swift
//  App_BemEstar
//
//  Created by user288578 on 12/8/25.
//

import SwiftUI
struct GoalContainer: View
{
    var body: some View {
        VStack(alignment: .leading,
               spacing: 20){
            ForEach(goalMock){
                goal in
                GoalListView(goal: goal)
            }
        }
    }
}

#Preview {
    GoalContainer()
}
