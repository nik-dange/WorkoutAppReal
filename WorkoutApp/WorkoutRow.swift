//
//  WorkoutsView.swift
//  workoutFrame
//
//  Created by Divy Gobiraj on 7/27/21.
//

import SwiftUI

struct ListWorkout: Identifiable {
    var id = UUID()
    var name: String
    var reps = 0
    var sets = 0
}

struct WorkoutsView: View {
    @State private var listWorkouts = [
             ListWorkout(name: "Workout 1"),
                     ]
     @State private var counter = 2
     var body: some View {
         
             VStack {
                 List(listWorkouts) { listWorkout in
                     NavigationLink(destination: WorkoutView()) {
                         Text(listWorkout.name)
                             .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                 }
                 .navigationBarTitle(Text("Your Workouts"), displayMode: .inline)
                 .navigationBarItems(trailing: Button(action: {
                     listWorkouts.append(ListWorkout(name: "Workout \(counter)"))
                     counter+=1
                     } ) {
                     Image(systemName: "plus")
                         .resizable()
                         .padding(6)
                         .frame(width: 24, height: 24)
                         .background(Color.white)
                         .clipShape(Circle())
                         .foregroundColor(.blue)
                 } )
                    
                 }
             }
         
     }
}

struct WorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsView()
    }
}
