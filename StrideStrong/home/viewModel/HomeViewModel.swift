//
//  HomeViewModel.swift
//  StrideStrong
//
//  Created by Pranav on 28/01/25.
//

import Foundation
import SwiftUI

class HomeViewModel:ObservableObject{
    @Published var currCalories = 123
    @Published var currActiveHrs = 8
    @Published var currStand = 52
    
    
    
    let mockActivity = [
        Activity(id: 0, title: "Today's Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .green, amount: 9172),
        Activity(id: 1, title: "Calories Burned", subtitle: "Goal 2000", image: "figure.walk", tintColor: .red, amount: 1850),
        Activity(id: 2, title: "Distance Run", subtitle: "Goal 5km", image: "figure.run", tintColor: .blue, amount: 4200),
        Activity(id: 3, title: "Hours Slept", subtitle: "Goal 8h", image: "figure.walk", tintColor: .purple, amount: 6)
    ]
    
    let mockWorkout = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: Color.green, duration: "23 mins", date: "Aug 3", calories: "341 kcal"),
        Workout(id: 1, title: "Cycling", image: "bicycle", tintColor: Color.blue, duration: "45 mins", date: "Aug 4", calories: "620 kcal"),
        Workout(id: 2, title: "Swimming", image: "figure.open.water.swim", tintColor: Color.cyan, duration: "30 mins", date: "Aug 5", calories: "400 kcal"),
        Workout(id: 3, title: "Yoga", image: "figure.yoga", tintColor: Color.purple, duration: "40 mins", date: "Aug 6", calories: "200 kcal"),
        Workout(id: 4, title: "Strength Training", image: "figure.strengthtraining.traditional", tintColor: Color.red, duration: "50 mins", date: "Aug 7", calories: "500 kcal"),
        Workout(id: 5, title: "Walking", image: "figure.walk", tintColor: Color.orange, duration: "60 mins", date: "Aug 8", calories: "300 kcal")
    ]
    
}
