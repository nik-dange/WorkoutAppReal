//
//  ContentView.swift
//  workoutFrame
//
//  Created by Divy Gobiraj on 7/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: WeeksView()){
                Text("My workouts")
                    .foregroundColor(Color.blue)
            .padding()
            }
            
            
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
