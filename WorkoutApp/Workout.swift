//
//  WorkoutView.swift
//  WorkoutApp
//
//  Created by Divy Gobiraj on 7/14/21.
//


import Foundation
import SwiftUI

struct Workout: Hashable, Codable {

    var Name: String
    var Sets: Int
    var Reps: Int


    private var imageName: String
    var image: Image {
        Image(imageName)
    }


}


