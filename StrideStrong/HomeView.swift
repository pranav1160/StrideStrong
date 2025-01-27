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
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    HomeView()
}
