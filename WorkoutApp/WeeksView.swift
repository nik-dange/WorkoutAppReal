//
//  WeeksView.swift
//  workoutFrame
//
//  Created by Divy Gobiraj on 7/7/21.
//

import SwiftUI

struct ListItem: Identifiable {
    var id = UUID()
    var name: String
}


struct WeeksView: View {
   @State private var listItems = [
            ListItem(name: "Week 1"),
                    ]
    @State private var counter = 2
    var body: some View {
            VStack {
                List(listItems) { listItem in
                    NavigationLink(destination: WeekView()) {
                        Text(listItem.name)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .navigationBarTitle(Text("Your Workouts"), displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    listItems.append(ListItem(name: "Week \(counter)"))
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

struct WeeksView_Previews: PreviewProvider {
    static var previews: some View {
        WeeksView()
    }
}

