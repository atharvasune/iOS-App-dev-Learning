//
//  ListItemView.swift
//  app-clips
//
//  Created by Atharva Sune on 21/10/23.
//

import SwiftUI

struct ListItemView: View {
    let framework: Framework
    var body: some View {
        FrameworkIconView(frameworkImageName: framework.imageName, frameworkName: framework.name, direction: "horizontal")
            .padding(.horizontal, 10)
    }
}

#Preview {
    ListItemView(framework: MockData.sampleFramework)
}
