//
//  DayMiniView.swift
//  sample-weather-app
//
//  Created by Atharva Sune on 20/10/23.
//

import SwiftUI

struct DayMiniView: View {
    let day: String
    let temperature: String
    let image: String
    var body: some View {
        VStack {
            Text(day)
                .font(.title3)
                .foregroundStyle(Color.white)
                .fontWeight(.medium)
            
            Image(systemName: image)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .frame(width: 40, height: 40)
//                .font(.system(size: 25))
            
            Text(temperature)
                .font(.title3)
                .foregroundStyle(Color.white)
        }
        .padding(.all, 10)
    }
}

#Preview {
    DayMiniView(day: "TUE", temperature: "74°", image: "cloud.sun.fill")
        .background(Color.blue)
}
