//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by 윤태웅 on 10/27/23.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isShowingDetail: Bool = false
    @Published var selectedItem: AppleFramework? // 선택되기 전까지 없을 수 있기에 ?를 붙여 optional로 만든다.
}
