//
//  FrameworkIconView.swift
//  app-clips
//
//  Created by Atharva Sune on 21/10/23.
//

import SwiftUI

struct FrameworkIconView: View {
    let frameworkImageName: String
    let frameworkName: String
    var direction: String = "vertical"

    var body: some View {
        if direction == "horizontal" {
            HStack {
                Image(frameworkImageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                    .padding(.trailing, 30)

                Text(frameworkName)
                    .font(.title2)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
                
                Spacer()
            }
        } else {
            VStack {
                Image(frameworkImageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                
                Text(frameworkName)
                    .font(.title2)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
            }
        }
        
    }
}

#Preview {
    FrameworkIconView(frameworkImageName: "arkit", frameworkName: "AR Kit")
}
