//
//  FrameworkDetailView.swift
//  app-clips
//
//  Created by Atharva Sune on 21/10/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailedView: Bool
    @State private var showSafariView: Bool = false
    var hideXMark: Bool = false
    var body: some View {
        VStack {
            if (!hideXMark) {
                HStack {
                    Spacer()
                    
                    Button {
                        isShowingDetailedView = false
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .foregroundStyle(Color(.label))
                            .frame(width: 20, height: 20)
                            
                    }
                }
                
                Spacer()
            }
            
            
            FrameworkIconView(frameworkImageName: framework.imageName, frameworkName: framework.name)
            
            Text(framework.description)
                .font(.body)
            
            Spacer()
                
            Button {
                showSafariView = true
            }label: {
                Text("Learn More")
                    .font(.title2)
                    .foregroundStyle(Color.white)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.all, 8)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.red)
                            .frame(width: 200)
                    }
                    
            }
        }.padding()
            .fullScreenCover(isPresented: $showSafariView, content: {
                SafariView(frameworkURL: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailedView: .constant(true))
}
