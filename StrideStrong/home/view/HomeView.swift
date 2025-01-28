//
//  ContentView.swift
//  StrideStrong
//
//  Created by Pranav on 27/01/25.
//

import SwiftUI


struct HomeView: View {
    @StateObject var hvm = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                //welcme text
                HStack{
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    Spacer()
                }
                
                
                HStack{
                    Spacer()
                    VStack(spacing: 20){
                        //calories
                        VStack(alignment: .leading,spacing: 8){
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.pink)
                            
                            Text("\(hvm.currCalories) kcal")
                                .bold()
                        }
                        //active
                        VStack(alignment: .leading,spacing: 8){
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.green)
                            
                            Text("\(hvm.currStand) mins")
                                .bold()
                        }
                        //stand
                        VStack(alignment: .leading,spacing: 8){
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.blue)
                            
                            Text("\(hvm.currActiveHrs) hours")
                                .bold()
                        }
                    }
                    
                    //circles
                    ZStack{
                        CircleProgressView(myColor: .pink, currScore: $hvm.currCalories, goal: 500)
                        CircleProgressView(myColor: .green, currScore: $hvm.currActiveHrs, goal: 24)
                            .padding(.all,20)
                        CircleProgressView(myColor: .blue, currScore: $hvm.currStand, goal: 60)
                            .padding(.all,40)
                    }
                    .padding()
                    
                    Spacer()
                }
                .padding(.vertical,-10)
                
                HStack{
                    Text("Fitness Activity")
                        .font(.title2)
                    
                    Spacer()
                    
                    Button{
                        print("printing show more")
                    }label: {
                        Text("Show More")
                            .padding(.all,10)
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(.rect(cornerRadius: 20))
                    }
                }.padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)){
                    ForEach(hvm.mockActivity,id: \.id) { activity in
                        ActivityCardView(myActivity: activity)
                    }
                }
                .padding(.horizontal)
                
                
                HStack{
                    Text("Recent Workouts")
                        .font(.title2)
                    
                    Spacer()
                    
                    NavigationLink(destination: EmptyView()) {
                        Text("Show More")
                            .padding(.all,10)
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(.rect(cornerRadius: 20))
                    }
                    
                }
                .padding(.horizontal)
                
                LazyVStack{
                    ForEach(hvm.mockWorkout,id: \.id) { workout in
                        WorkoutCardView(myWorkout: workout)
                    }
                }
                
            }
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    HomeView()
}
