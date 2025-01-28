//
//  ContentView.swift
//  StrideStrong
//
//  Created by Pranav on 27/01/25.
//

import SwiftUI

struct HomeView: View {
    @State var currCalories = 123
    @State var currActiveHrs = 52
    @State var currStand = 8
    
//    let myColumns=[GridItem(spacing: 20),GridItem(spacing: 20)]
    
    let mockActivity = [
        Activity(id: 0, title: "Today's Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .green, amount: 9172),
        Activity(id: 1, title: "Calories Burned", subtitle: "Goal 2000", image: "figure.walk", tintColor: .red, amount: 1850),
        Activity(id: 2, title: "Distance Run", subtitle: "Goal 5km", image: "figure.run", tintColor: .blue, amount: 4200),
        Activity(id: 3, title: "Hours Slept", subtitle: "Goal 8h", image: "figure.walk", tintColor: .purple, amount: 6)
    ]
    
    var body: some View {
        ScrollView {
            //welcme text
            Text("Welcome")
                .font(.largeTitle)
                .padding()
            
            HStack{
                Spacer()
                VStack(spacing: 20){
                    //calories
                    VStack(alignment: .leading,spacing: 8){
                        Text("Calories")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(.pink)
                        
                        Text("123 kcal")
                            .bold()
                    }
                    //active
                    VStack(alignment: .leading,spacing: 8){
                        Text("Active")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(.green)
                        
                        Text("52 mins")
                            .bold()
                    }
                    //stand
                    VStack(alignment: .leading,spacing: 8){
                        Text("Stand")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(.blue)
                        
                        Text("8 hours")
                            .bold()
                    }
                }
                //circles
                ZStack{
                    CircleProgressView(myColor: .pink, currScore: $currCalories, goal: 500)
                    CircleProgressView(myColor: .green, currScore: $currActiveHrs, goal: 100)
                        .padding(.all,20)
                    CircleProgressView(myColor: .blue, currScore: $currStand, goal: 24)
                        .padding(.all,40)
                }
                .padding()
               
                Spacer()
            }
            .padding()
            
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
                ForEach(mockActivity,id: \.id) { activity in
                    ActivityCardView(myActivity: activity)
                }
            }
            .padding(.horizontal)
            
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    HomeView()
}
