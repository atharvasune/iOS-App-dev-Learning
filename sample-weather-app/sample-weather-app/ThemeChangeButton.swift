//
//  ThemeChangeButton.swift
//  sample-weather-app
//
//  Created by Atharva Sune on 20/10/23.
//

import SwiftUI

struct ThemeChangeButton: View {
    @Binding var themeMode: Bool
    var body: some View {
        Button {
            themeMode = !themeMode
        } label: {
            Text("Switch To Dark Mode")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundStyle(themeMode == true ? Color.black : Color.white)
                .padding()
                .frame(width: 250)
                .background(themeMode == true ? Color.white : Color(red: 0.2, green: 0.2, blue: 0.288))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: themeMode ? .gray : .white, radius: 3.5)
        }    }
}

#Preview {
    ZStack {
        LinearGradient(colors: [Color.blue, .cyan, .cyan, .white], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
        VStack {
            Spacer()
            ThemeChangeButton(themeMode: .constant(true))
        }.padding()
    }

}
