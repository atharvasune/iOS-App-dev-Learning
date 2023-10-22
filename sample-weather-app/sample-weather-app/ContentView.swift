//
//  ContentView.swift
//  sample-weather-app
//
//  Created by Atharva Sune on 20/10/23.
//

import SwiftUI

struct MiniInfoDetails: Identifiable {
    let id = UUID()
    let day: String
    let temperature: String
    let image: String
}

struct BackgroundColor: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea(.all)
    }
}

struct ContentView: View {
    
    @State var themeMode: Bool = false;
    
    let nextFewDayDetails: [MiniInfoDetails] = [
        MiniInfoDetails(day: "TUE", temperature: "74°", image: "cloud.sun.fill"),
        MiniInfoDetails(day: "WED", temperature: "70°", image: "sun.max.fill"),
        MiniInfoDetails(day: "THU", temperature: "66°", image: "wind"),
        MiniInfoDetails(day: "FRI", temperature: "60°", image: "sun.horizon.fill"),
        MiniInfoDetails(day: "SAT", temperature: "55°", image: "moon.stars.fill")
    ]
    
    var body: some View {
        ZStack {
            BackgroundColor(topColor: themeMode ? .blue : Color(red: 0, green: 0, blue: 0.21),
                            bottomColor: themeMode ? Color(red: 0.4627, green: 0.8392, blue: 1.0) : Color(red: 0.3, green: 0.3, blue: 0.5))
            VStack {
                TodayDetailView()
                Spacer()
                HStack {
                    ForEach(nextFewDayDetails) { dayDetails in
                        DayMiniView(day: dayDetails.day, temperature: dayDetails.temperature, image: dayDetails.image)
                    }
                }
                
                Spacer()
                
                ThemeChangeButton(themeMode: $themeMode)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
