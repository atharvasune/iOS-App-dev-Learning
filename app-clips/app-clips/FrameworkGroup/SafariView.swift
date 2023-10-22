//
//  SafariView.swift
//  app-clips
//
//  Created by Atharva Sune on 21/10/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let frameworkURL: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController  {
        SFSafariViewController(url: frameworkURL)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
    }
}
