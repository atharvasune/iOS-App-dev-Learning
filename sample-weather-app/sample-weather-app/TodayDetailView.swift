//
//  TodayDetailView.swift
//  sample-weather-app
//
//  Created by Atharva Sune on 20/10/23.
//

import SwiftUI

struct TodayDetailView: View {
    var body: some View {
        VStack {
            Text("Hyderabad, TS")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            

            VStack {
                Image(systemName: "cloud.sun.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 150)
                    .symbolRenderingMode(.multicolor)
                
                Text("76°")
                    .font(.system(size: 50, weight: .medium))
                    .foregroundStyle(Color.white)
                
                
            }
            
            .padding()
        }
    }
}

#Preview {
    ZStack {
        LinearGradient(colors: [Color.blue, .cyan, .cyan, .white], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
        VStack {
            TodayDetailView()
            Spacer()
        }.padding()
    }

        
}
