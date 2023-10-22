//
//  GridView.swift
//  app-clips
//
//  Created by Atharva Sune on 21/10/23.
//

import SwiftUI

struct GridView: View {
    @StateObject var frameworkModel = FrameworkDataModel()
    
    let columns = Array(repeating: GridItem(), count:3)
    
    var body: some View {
            ScrollView {
                LazyVGrid (columns: columns, spacing: 20) {
                    ForEach(MockData.frameworks) { framework in
                        GridItemView(framework: framework)
                            .onTapGesture {
                                frameworkModel.selectedFramework = framework
                            }
                            .sheet(isPresented: $frameworkModel.isShowingDetailedView) {
                                FrameworkDetailView(framework: frameworkModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailedView: $frameworkModel.isShowingDetailedView)
                            }
                    }
                }
            }
            .padding()
        
    }
}

#Preview {
    GridView()
}
