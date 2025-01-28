//
//  ActivityCardView.swift
//  StrideStrong
//
//  Created by Pranav on 28/01/25.
//

import SwiftUI



struct ActivityCardView: View {
    let myActivity:Activity
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6)
                .clipShape(.rect(cornerRadius: 15))
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text(myActivity.title)
                        Text(myActivity.subtitle)
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    Image(systemName: myActivity.image)
                        .foregroundStyle(myActivity.tintColor)
                    
                }
                
                Text("\(myActivity.amount)")
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
            
        }
       
    }
}

#Preview {
    ActivityCardView(myActivity: Activity(id: 0, title: "Todays Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .green, amount: 9172))
}
