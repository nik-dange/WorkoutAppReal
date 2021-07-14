//
//  WeekView.swift
//  workoutFrame
//
//  Created by Divy Gobiraj on 7/11/21.
//

import SwiftUI

struct ListDay: Identifiable {
    var id = UUID()
    var name: String
}

struct DetailView: View {
    var existingItem: ListDay?

    var body: some View {
        Text((existingItem != nil) ? "Edit existing: \(existingItem!.name)" : "Enter NEW List Item")
    }
}

struct WeekView: View {
    @State private var listDays = [
        ListDay(name: "Monday"),
        ListDay(name: "Tuesday"),
        ListDay(name: "Wednesday"),
        ListDay(name: "Thursday"),
        ListDay(name: "Friday"),
        ListDay(name: "Saturday"),
        ListDay(name: "Sunday"),
                     ]
    var body: some View {
        
            VStack {
                List(listDays) { listItem in
                    NavigationLink(destination: DetailView(existingItem: listItem)) {
                        Text(listItem.name)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                }
                
            }
            

    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView()
    }
}
