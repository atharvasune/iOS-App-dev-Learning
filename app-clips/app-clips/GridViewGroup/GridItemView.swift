//
//  SwiftUIView.swift
//  app-clips
//
//  Created by Atharva Sune on 21/10/23.
//

import SwiftUI

struct GridItemView: View {
    let framework: Framework
    var body: some View {
        FrameworkIconView(frameworkImageName: framework.imageName, frameworkName: framework.name)
            .padding()
    }
}

#Preview {
    GridItemView(framework: MockData.sampleFramework)
}
