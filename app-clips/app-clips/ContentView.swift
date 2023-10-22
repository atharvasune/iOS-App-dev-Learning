//
//  ContentView.swift
//  app-clips
//
//  Created by Atharva Sune on 21/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var gridView: Bool = true
    var body: some View {
        NavigationStack {
            if gridView {
                GridView()
                    .navigationTitle("Apple Frameworks")
                    .toolbar(content: {
                        Button {
                            gridView.toggle()
                        } label: {
                            Image(systemName: "rectangle.grid.1x2.fill")
                        }
                    })
            } else {
                ListView()
                    .navigationTitle("Apple Frameworks")
                    .toolbar(content: {
                        Button {
                            gridView.toggle()
                        } label: {
                            Image(systemName: "square.grid.2x2.fill")
                        }
                    })
            }
        }
    }
}

#Preview {
    ContentView()
}
