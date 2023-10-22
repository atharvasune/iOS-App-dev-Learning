//
//  ListView.swift
//  app-clips
//
//  Created by Atharva Sune on 21/10/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink {
                        FrameworkDetailView(framework: framework, isShowingDetailedView: .constant(false), hideXMark: true)
                    } label: {
                        ListItemView(framework: framework)
                    }
                    
                }
            }.ignoresSafeArea(edges: .horizontal)
            .navigationTitle("Apple Frameworks")
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
    
}
