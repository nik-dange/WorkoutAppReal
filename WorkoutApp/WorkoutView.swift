//
//  WorkoutView.swift
//  workoutFrame
//
//  Created by Divy Gobiraj on 7/27/21.
//

import SwiftUI

struct WorkoutView: View {
    @State var name = ""
    @State var sets = ""
    @State var reps = ""
   
    
    var body: some View {
        VStack{
            Form{
                Section{
                    TextField("Workout Name", text:$name)
                }
                Section{
                    TextField("Sets", text:$sets)
                }
                Section{
                    TextField("Reps", text:$reps)
                }
            }
     
            Button(action: {
                
            }, label: {
                Text("Add Workout")
                    .frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            )
        
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
