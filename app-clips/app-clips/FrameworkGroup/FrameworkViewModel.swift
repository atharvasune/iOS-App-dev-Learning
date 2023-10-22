//
//  FrameworkViewModel.swift
//  app-clips
//
//  Created by Atharva Sune on 21/10/23.
//

import Foundation

class FrameworkDataModel : ObservableObject {
    var selectedFramework: Framework? = nil {
        didSet {
            isShowingDetailedView = true
        }
    }
    @Published var isShowingDetailedView = false
}
