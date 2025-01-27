//
//  FitnessTabView.swift
//  StrideStrong
//
//  Created by Pranav on 28/01/25.
//

import SwiftUI

struct FitnessTabView: View {
    @State private var selectedTab = 0
    
    init() {
        // Customize the tab bar appearance
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .black // Tab bar background color
        appearance.stackedLayoutAppearance.selected.iconColor = .systemPink // Selected icon color
        appearance.stackedLayoutAppearance.normal.iconColor = .myGray // Unselected icon color
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // First Tab - Home
            HomeView()
                .tag(0) // Identifies the tab
                .tabItem { // Sets tab label and icon
                    Label("Home", systemImage: "house")
                }
                
            
            // Second Tab - Search
            MainChartView()
                .tag(1)
                .tabItem {
                    Label("Chart", systemImage: "chart.bar")
                }
        }
       
        .preferredColorScheme(.dark)
    }
    
}

#Preview {
    FitnessTabView()
}
