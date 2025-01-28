//
//  WorkoutCardView.swift
//  StrideStrong
//
//  Created by Pranav on 28/01/25.
//

import SwiftUI


struct Workout{
    let id:Int
    let title:String
    let image:String
    let tintColor:Color
    let duration:String
    let date:String
    let calories:String
}

struct WorkoutCardView: View {
    @State var myWorkout:Workout
    
    var body: some View {
        HStack{
            Image(systemName: myWorkout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48,height: 48)
                .foregroundStyle(myWorkout.tintColor)
                .padding()
                .background(.myGray.opacity(0.2))
                .clipShape(.rect(cornerRadius: 10))
            VStack(spacing: 16){
                HStack{
                    Text(myWorkout.title)
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text(myWorkout.duration)
                }
                
                HStack{
                    Text(myWorkout.date)
                    Spacer()
                    Text(myWorkout.calories)
                }
            }
            
        }.padding(.horizontal)
    }
}

#Preview {
    WorkoutCardView(myWorkout: Workout(id: 0, title: "Running", image: "figure.run",tintColor: Color.green, duration: "23 mins",date: "Aug 3", calories: "341 kcal"))
}
