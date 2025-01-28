//
//  CircleProgressView.swift
//  StrideStrong
//
//  Created by Pranav on 28/01/25.
//

import SwiftUI

struct CircleProgressView: View {
    let myColor:Color
    @Binding var currScore:Int
    let goal:Int
    
    @State var isAnimate=false
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(myColor.opacity(0.3),lineWidth: 20)
            Circle()
                .trim(from: 0,to: isAnimate ? CGFloat(currScore) / CGFloat(goal) : 0)
                .stroke(myColor,style:StrokeStyle(lineWidth: 20,lineCap: .round))
                .rotationEffect(Angle(degrees: -90))
                .shadow(radius: 5)
            
                
        }.onAppear(perform: {
            withAnimation (.easeIn(duration: 0.8)){
                isAnimate=true
            }
           
        })
        //comment this out
        .padding()
    }
}

#Preview {
    CircleProgressView(myColor: .red, currScore: .constant(30), goal: 120)
}
