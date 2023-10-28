//
//  FrameworkDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by 윤태웅 on 10/28/23.
//

import Foundation
import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    @Published var framework: AppleFramework
    @Published var isSafariPresented: Bool = false
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}
